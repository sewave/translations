@echo off
set T_FILENAME="Lemmings (E) [!].sms"
set SCRIPTNAME="lemmingssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
