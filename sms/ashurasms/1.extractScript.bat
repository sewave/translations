@echo off
set T_FILENAME="Ashura (J) [!].sms"
set SCRIPTNAME="ashurasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
