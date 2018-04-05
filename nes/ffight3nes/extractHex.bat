@echo off 
set T_FILENAME="TR_Final Fight 3 (Unl) [!].nes"
set SCRIPTNAME="ffight3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 55F10:F0 
pause 
