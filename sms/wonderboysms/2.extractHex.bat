@echo off
set T_FILENAME="TR_Wonder Boy (UE) [!].sms"
set SCRIPTNAME="wonderboysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EBF8:C0,1EF78:C0,1FA98:140
pause
