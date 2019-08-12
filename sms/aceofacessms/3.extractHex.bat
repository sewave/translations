@echo off
set T_FILENAME="TR_Ace of Aces (E) [!].sms"
set SCRIPTNAME="aceofacessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
