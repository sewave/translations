@echo off
set T_FILENAME="TaleSpin (USA).gb"
set SCRIPTNAME="talespingb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
