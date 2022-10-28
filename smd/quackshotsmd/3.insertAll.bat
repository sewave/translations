@echo off
set T_FILENAME="TR_QuackShot Starring Donald Duck ~ QuackShot - I Love Donald Duck - Guruzia Ou no Hihou (World) (v1.1).md"
set S_FILENAME="QuackShot Starring Donald Duck ~ QuackShot - I Love Donald Duck - Guruzia Ou no Hihou (World) (v1.1).md"
set SCRIPTNAME="quackshotsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%

REM Compressed Graphics
echo "Compressing graphics..."

CALL :CompressGfx %T_FILENAME%,"gx0001C120_mod.gfx","gx0001C120.gfx","1C120"

CALL :CompressGfxNoCompare %T_FILENAME%,"gx0001CBEA_mod.gfx","41000"

CALL :CompressGfx %T_FILENAME%,"gx0012A5FA_mod.gfx","gx0012A5FA.gfx","12A5FA"

CALL :CompressGfx %T_FILENAME%,"gx00030946_mod.gfx","gx00030946.gfx","30946"

CALL :CompressGfx %T_FILENAME%,"gx00031BF8_mod.gfx","gx00031BF8.gfx","31BF8"

REM Compressed Text
CALL :CompressTxt %T_FILENAME%,"tx13B000.tex","%SCRIPTNAME%Alt",40000

java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%

REM Fix checksum
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
EXIT /B 0

:CompressTxt
del TR_%~2
copy %~2 TR_%~2
java -jar Hextractor.jar -h %~3.tbl tr_%~3.ext TR_%~2
kosinski_compress.exe "TR_%~2" "TR_%~2.cmp"
kosinski_compress.exe %~2 %~2.cmp
REM CALL :CompareFiles TR_%~2.cmp,%~2.cmp
java -jar Hextractor.jar -if "%~1" "TR_%~2".cmp %~4
EXIT /B 0

:CompressGfxNoCompare
nemcmp.exe %~2 %~2.cmp 0
java -jar Hextractor.jar -if "%~1" "%~2".cmp %~3
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