@echo off
set T_FILENAME="Faceball 2000 (USA).gb"
set SCRIPTNAME="faceball2000gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
