@echo off
set T_FILENAME="Mystic Defender (W) (REV01) [!].gen"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
