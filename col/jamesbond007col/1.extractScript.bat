@echo off
set T_FILENAME="James Bond 007 (USA).col"
set SCRIPTNAME="jamesbond007col"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
