@echo off
set T_FILENAME="Spy vs. Spy (UE) [!].sms"
set SCRIPTNAME="spyvsspysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
