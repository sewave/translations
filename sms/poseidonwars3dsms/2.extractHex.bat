@echo off
set T_FILENAME="TR_Poseidon Wars 3-D (USA, Europe, Brazil).sms"
set SCRIPTNAME="poseidonwars3dsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
