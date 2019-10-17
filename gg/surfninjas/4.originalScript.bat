@echo off
set T_FILENAME="Surf Ninjas (U) [!].gg"
set SCRIPTNAME="surfninjas"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
