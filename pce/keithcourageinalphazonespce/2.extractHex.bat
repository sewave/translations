@echo off
set T_FILENAME="TR_Keith Courage in Alpha Zones (U).pce"
set SCRIPTNAME="keithcourageinalphazonespce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24000:200,31B40:300
pause
