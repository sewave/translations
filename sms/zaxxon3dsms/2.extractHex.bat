@echo off
set T_FILENAME="TR_Zaxxon 3D (UE) [!].sms"
set SCRIPTNAME="zaxxon3dsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 118E0:100
pause
