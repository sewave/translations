@echo off
set T_FILENAME="TR_Senjou no Ookami II ~ Mercs (World).md"
set S_FILENAME="Senjou no Ookami II ~ Mercs (World).md"
set SCRIPTNAME="mercssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%

echo ****************Compressing graphics...****************
REM CALL :CompressGfx %T_FILENAME%,"gx000E4EE8_ExitShop_mod.gfx","gx000E4EE8_ExitShop.gfx","E4EE8"
CALL :CompressGfx %T_FILENAME%,"gx00059BB8_ShootEnter_mod.gfx","gx00059BB8_ShootEnter.gfx","59BB8"
CALL :CompressGfx %T_FILENAME%,"gx000582AC_SmallFont_mod.gfx","gx000582AC_SmallFont.gfx","582AC"
CALL :CompressGfx %T_FILENAME%,"gx000589FA_BigFont_mod.gfx","gx000589FA_BigFont.gfx","589FA"
CALL :CompressGfxNoCompare %T_FILENAME%,"gx000591E0_StatusBar_mod.gfx","FD000"

echo ****************Inserting hex and text...****************
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
REM java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_Clean.ext

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