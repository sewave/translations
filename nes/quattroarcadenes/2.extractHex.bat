@echo off
set T_FILENAME="TR_Quattro Arcade (USA) (Unl).nes"
set SCRIPTNAME="quattroarcadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A78D:10
pause
