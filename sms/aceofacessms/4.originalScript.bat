@echo off
set T_FILENAME="Ace of Aces (E) [!].sms"
set SCRIPTNAME="aceofacessms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
