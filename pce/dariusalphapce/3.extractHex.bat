@echo off
set T_FILENAME="TR_Darius Alpha (J).pce"
set SCRIPTNAME="dariusalphapce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
