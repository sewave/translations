@echo off
set T_FILENAME="Cloud Master (UE) [!].sms"
set SCRIPTNAME="cloudmastersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
