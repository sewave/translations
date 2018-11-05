@echo off
set T_FILENAME="TR_Kung Fu Kid (UE) [!].sms"
set SCRIPTNAME="kungfukidsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1ac32:11B8
pause
