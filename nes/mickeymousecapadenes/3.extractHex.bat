@echo off
set T_FILENAME="TR_Mickey Mousecapade (U) [!].nes"
set SCRIPTNAME="mickeymousecapadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 85D0:10,86D0:10,87B0:10,88B0:10,8EC0:20,8FC0:20,9B40:10,9D50:10,9DB0:10,9D80:10,9E30:80,D070:10,D0C0:40,D140:50
pause
