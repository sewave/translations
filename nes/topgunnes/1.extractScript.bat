@echo off
set T_FILENAME="Top Gun (U) (PRG1) [!].nes"
set SCRIPTNAME="topgunnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
