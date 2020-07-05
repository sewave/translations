@echo off
set T_FILENAME="TR_Tiger-Heli (USA).nes"
set SCRIPTNAME="tigerhelines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 91D0:10,80C0:80,A0C0:80,C0C0:80,E0C0:80
pause
