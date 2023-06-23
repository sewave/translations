@echo off
set T_FILENAME="TR_Bare Knuckle III (Japan) [T+ENG].md"
set S_FILENAME="Bare Knuckle III (Japan) [T+ENG].md"
set SCRIPTNAME="bareknuckleiiismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%

REM Compressed Graphics
echo "Compressing graphics..."

CALL :CompressGfx %T_FILENAME%,"upper_font_0026CDB8_mod.gfx","upper_font_0026CDB8.gfx","26CDB8"
CALL :CompressGfx %T_FILENAME%,"letter_0027AE9A_mod.gfx","letter_0027AE9A.gfx","0027AE9A"

REM Hex and scripts
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%

java -jar Hextractor.jar -fcm %T_FILENAME%
pause

EXIT /B 0

:CompressGfx
nemcmp.exe %~2 %~2.cmp 0
nemcmp.exe %~3 %~3.cmp 0
CALL :CompareFiles %~2.cmp,%~3.cmp
java -jar Hextractor.jar -if "%~1" "%~2".cmp %~4
EXIT /B 0

:CompareFiles
FOR /F "usebackq" %%A IN ('%~1') DO set sizeMod=%%~zA
FOR /F "usebackq" %%A IN ('%~2') DO set size=%%~zA
if %sizeMod% GTR %size% (
    echo %~2 is larger! '%sizeMod% vs %size%'
	pause
	EXIT -1
)
EXIT /B 0
