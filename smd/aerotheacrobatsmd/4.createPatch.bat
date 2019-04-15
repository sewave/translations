@echo off
set T_FILENAME="TR_Aero the Acro-Bat (U) [c][!].bin"
set S_FILENAME="Aero the Acro-Bat (U) [c][!].bin"
set SCRIPTNAME="aerotheacrobatsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
