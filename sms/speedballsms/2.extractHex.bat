@echo off
set T_FILENAME="TR_Speedball (E) (Virgin) [!].sms"
set SCRIPTNAME="speedballsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15E40:1280,14220:20
pause
