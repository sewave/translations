@echo off
set T_FILENAME="TR_Socket (USA).md"
set SCRIPTNAME="socketsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DA8C0:2A0,DADE0:200,FA5A0:680,FDF20:20,FDFE0:20,FE620:800
pause
