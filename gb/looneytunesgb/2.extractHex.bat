@echo off
set T_FILENAME="TR_Looney Tunes (U) [!].gb"
set SCRIPTNAME="looneytunesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9254:50,B0C0:20
pause
