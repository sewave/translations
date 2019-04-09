@echo off
set T_FILENAME="Popeye (W) (PRG1) [!].nes"
set SCRIPTNAME="popeyenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
