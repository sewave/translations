@echo off
set T_FILENAME="TR_Wanted (UE) [!].sms"
set SCRIPTNAME="wantedsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1BD20:20,D460:20,1BE60:140,17C40:400,D600:20
pause
