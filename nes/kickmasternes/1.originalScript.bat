@echo off
set T_FILENAME="Kick Master (U) [!].nes"
set SCRIPTNAME="kickmasternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
