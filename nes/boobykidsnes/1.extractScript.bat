@echo off
set T_FILENAME="Booby Kids (J) [!].nes"
set SCRIPTNAME="boobykidsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
