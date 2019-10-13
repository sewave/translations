@echo off
set T_FILENAME="TR_James 'Buster' Douglas Knockout Boxing (USA, Europe).md"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
