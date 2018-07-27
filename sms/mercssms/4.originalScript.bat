@echo off
set T_FILENAME="Mercs (E) [!].sms"
set SCRIPTNAME="mercssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
