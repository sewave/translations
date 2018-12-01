@echo off
set T_FILENAME="Alex Kidd - The Lost Stars (UE) [!].sms"
set SCRIPTNAME="alexkiddtheloststarssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
