@echo off
set T_FILENAME="TR_Lemmings (USA).nes"
set SCRIPTNAME="lemmingsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 210D0:B0,21F50:50,
pause
