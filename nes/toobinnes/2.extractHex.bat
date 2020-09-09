@echo off
set T_FILENAME="TR_Toobin' (USA) (Unl).nes"
set SCRIPTNAME="toobinnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 203B0:40,2FA00:20,2F750:100,25A10:130
pause
