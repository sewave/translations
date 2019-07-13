@echo off
set T_FILENAME="Alfred Chicken (USA).gb"
set SCRIPTNAME="alfredchickengb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
