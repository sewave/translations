@echo off
set T_FILENAME="Ninja, The (UE) [!].sms"
set SCRIPTNAME="ninjathesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
