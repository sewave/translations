@echo off 
set T_FILENAME="TL_Time Diver Eon Man (U) (Prototype).nes"
set SCRIPTNAME="timediver"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F240:40,2FA40:40,2F5C0:40,2FDC0:40
pause 
