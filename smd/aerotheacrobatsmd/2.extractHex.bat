@echo off
set T_FILENAME="TR_Aero the Acro-Bat (U) [c][!].bin"
set SCRIPTNAME="aerotheacrobatsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
