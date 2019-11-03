@echo off
set T_FILENAME="Zillion (UE) (V1.1) [!].sms"
set SCRIPTNAME="zillionsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
