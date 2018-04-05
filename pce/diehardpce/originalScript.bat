@echo off 
set T_FILENAME="Die Hard (Japan) [T+ENG].pce"
set SCRIPTNAME="diehardpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
