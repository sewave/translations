@echo off
set T_FILENAME="TR_Double Dragon (USA).nes"
set SCRIPTNAME="doubledragonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CD80:30,3DD80:30,30E70:40,3BEA0:10,3AE10:A0,3AF10:A0,
pause
