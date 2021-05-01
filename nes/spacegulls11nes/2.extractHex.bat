@echo off
set T_FILENAME="TR_Spacegulls-1.1.nes"
set SCRIPTNAME="spacegulls11nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8410:20,8450:20,BD90:10,BDF0:40,B16A:10
pause
