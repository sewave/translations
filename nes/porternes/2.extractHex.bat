@echo off
set T_FILENAME="TR_Porter (Asia) (En) (Unl).nes"
set SCRIPTNAME="porternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8C10:100,9730:10
pause
