@echo off
set T_FILENAME="Solomon's Key (U) [!].nes"
set SCRIPTNAME="solomonskeynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
