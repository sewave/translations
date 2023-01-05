@echo off
set T_FILENAME="TR_Titan Warriors (USA) (Proto).nes"
set SCRIPTNAME="titanwarriorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17F10:A0
pause
