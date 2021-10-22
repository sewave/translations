@echo off
set T_FILENAME="TR_Frankenstein - The Monster Returns (USA).nes"
set SCRIPTNAME="frankensteinthemonsterreturnsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AC40:10,3AE80:40,3AEF0:10,3AFB0:10
pause
