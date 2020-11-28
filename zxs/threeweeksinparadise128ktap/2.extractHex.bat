@echo off
set T_FILENAME="TR_Three Weeks In Paradise - 128k.tap"
set SCRIPTNAME="threeweeksinparadise128ktap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15194:80,1549A:E0,14254:8,133F4:C0
pause
