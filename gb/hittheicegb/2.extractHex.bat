@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA, Europe).gb"
set SCRIPTNAME="hittheicegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9260:20,9360:20,
pause
