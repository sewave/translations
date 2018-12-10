@echo off
set T_FILENAME="Super Off-Road (E) [!].sms"
set SCRIPTNAME="superoffroadsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
