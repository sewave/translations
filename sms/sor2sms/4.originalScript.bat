@echo off
set T_FILENAME="Streets of Rage 2 (E) [!].sms"
set SCRIPTNAME="sor2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
