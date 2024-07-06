@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (World).md"
set S_FILENAME="Shadow Dancer - The Secret of Shinobi (World) [EXP].md"
set SCRIPTNAME="shadowdancerthesecretofshinobismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%

echo ****************Compressing graphics...****************
REM CALL :CompressGfx %T_FILENAME%,"gfx0001E2C6_font_mod.gfx","gfx0001E2C6_font.gfx","1E2C6"
CALL :CompressGfxNoCompare %T_FILENAME%,"gfx0001E2C6_font_mod.gfx","80000"
CALL :CompressGfxNoCompare %T_FILENAME%,"gfx0004243A_secret_mod.gfx","80800"
CALL :CompressGfxNoCompare %T_FILENAME%,"gfx00054A06_pause_mod.gfx","81000"
REM CALL :CompressGfxNoCompare %T_FILENAME%,"gx0005B63E_bigfont_mod.gfx","81000"

echo ****************Inserting hex and text...****************
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%

echo ****************Fixing checksum...****************
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
EXIT /B 0

:CompressGfxNoCompare
nemcmp.exe %~2 %~2.cmp 0
java -jar Hextractor.jar -if "%~1" "%~2".cmp %~3
EXIT /B 0

:CompressGfx
nemcmp.exe %~2 %~2.cmp 0
nemcmp.exe %~3 %~3.cmp 0
CALL :CompareFiles %~2.cmp,%~3.cmp
del %~3.cmp
java -jar Hextractor.jar -if "%~1" "%~2".cmp %~4
EXIT /B 0

:CompareFiles
FOR /F "usebackq" %%A IN ('%~1') DO set sizeMod=%%~zA
FOR /F "usebackq" %%A IN ('%~2') DO set size=%%~zA
if %sizeMod% GTR %size% (
    echo %~2 is larger! '%sizeMod% vs %size%'
    del %~1
    del %~2
	pause
	EXIT -1
)
EXIT /B 0
