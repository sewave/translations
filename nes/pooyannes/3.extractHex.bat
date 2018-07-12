@echo off
set T_FILENAME="TR_Pooyan (J).nes"
set SCRIPTNAME="pooyannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
