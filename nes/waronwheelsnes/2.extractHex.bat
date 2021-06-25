@echo off
set T_FILENAME="TR_War on Wheels (USA) (Proto).nes"
set SCRIPTNAME="waronwheelsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23970:20,20F80:80,23F80:80,24F80:80,26F80:80,
pause
