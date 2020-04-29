@echo off
set T_FILENAME="TR_Master Karateka (Japan).gb"
set SCRIPTNAME="masterkaratekagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
