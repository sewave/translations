@echo off 
set T_FILENAME="El Viento Enhancement by MIJET (Hack).bin"
set SCRIPTNAME="elviento"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 
pause 
