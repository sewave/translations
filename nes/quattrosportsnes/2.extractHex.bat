@echo off
set T_FILENAME="TR_Quattro Sports (USA) (Unl).nes"
set SCRIPTNAME="quattrosportsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
