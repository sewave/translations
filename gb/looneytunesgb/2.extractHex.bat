@echo off
set T_FILENAME="TR_Looney Tunes (USA, Europe).gb"
set SCRIPTNAME="looneytunesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9254:50,B0C0:20,8BA0:10,8C60:10
pause
