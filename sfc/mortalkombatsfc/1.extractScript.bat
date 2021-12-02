@echo off
set T_FILENAME="Mortal Kombat (USA).sfc"
set SCRIPTNAME="mortalkombatsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
