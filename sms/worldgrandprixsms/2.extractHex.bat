@echo off
set T_FILENAME="TR_World Grand Prix (U) [!].sms"
set SCRIPTNAME="worldgrandprixsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C060:100,1C400:20,10A00:900
pause
