@echo off
set T_FILENAME="Strider II (UE) [!].sms"
set SCRIPTNAME="strider2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
