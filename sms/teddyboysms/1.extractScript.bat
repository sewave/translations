@echo off
set T_FILENAME="Teddy Boy (UE) [!].sms"
set SCRIPTNAME="teddyboysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
