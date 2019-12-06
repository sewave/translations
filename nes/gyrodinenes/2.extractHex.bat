@echo off
set T_FILENAME="TR_Gyrodine (J) [!].nes"
set SCRIPTNAME="gyrodinenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 81A0:10,81C0:10,8240:10
pause
