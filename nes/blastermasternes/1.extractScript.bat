@echo off
set T_FILENAME="Blaster Master (U) [!].nes"
set SCRIPTNAME="blastermasternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
