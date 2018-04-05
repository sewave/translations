@echo off
set T_FILENAME="TR_Home Alone (U) [!].sms"
set SCRIPTNAME="homealonesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 27EA9-28029,3B981-3BB81
pause
