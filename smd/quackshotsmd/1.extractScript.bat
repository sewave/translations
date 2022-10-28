@echo off
set T_FILENAME="QuackShot Starring Donald Duck ~ QuackShot - I Love Donald Duck - Guruzia Ou no Hihou (World) (v1.1).md"
set SCRIPTNAME="quackshotsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

REM EXTRACT TEXTS
set S_FILENAME=%T_FILENAME%
set T_FILENAME="tx13B000.tex"
kozdec.exe %S_FILENAME% %T_FILENAME% 13B000
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
nemdec.exe %S_FILENAME% gx0001C120.gfx 1C120
nemdec.exe %S_FILENAME% gx0001CBEA.gfx 1CBEA
nemdec.exe %S_FILENAME% gx0012A5FA.gfx 12A5FA
nemdec.exe %S_FILENAME% gx00030946.gfx 30946
nemdec.exe %S_FILENAME% gx00031BF8.gfx 31BF8
pause
