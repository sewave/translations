@echo off
set T_FILENAME="Super Space Invaders (E) [!].sms"
set SCRIPTNAME="superspaceinvaderssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
