@echo off 
set T_FILENAME="Shinobi III - Return of the Ninja Master (U) [!].bin"
set SCRIPTNAME="shinobi3"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
