@echo off
set T_FILENAME="Wild Gunman (U) (PRG0) [!].nes"
set SCRIPTNAME="wildgunmannes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
