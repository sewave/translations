@echo off
set T_FILENAME="Salamander (J).pce"
set SCRIPTNAME="salamanderpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
