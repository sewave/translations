@echo off
set T_FILENAME="Rambo (U) (PRG1) [!].nes"
set SCRIPTNAME="rambones"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
