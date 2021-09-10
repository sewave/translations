@echo off
set T_FILENAME="TR_Ghostbusters (USA).nes"
set SCRIPTNAME="ghostbustersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8250:20,91C0:50,A1C0:50,B1C0:50,E1C0:50,F1C0:50,93C0:30,A3C0:30,B3C0:30,E3C0:30,F3C0:30,9F10:A0,9E90:80
pause
