@echo off
set T_FILENAME="TR_Tecmo World Cup '93 (E) [!].sms"
set SCRIPTNAME="tecmoworldcup93sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
