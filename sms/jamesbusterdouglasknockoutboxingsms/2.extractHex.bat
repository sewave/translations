@echo off
set T_FILENAME="TR_James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
