@echo off
set T_FILENAME="TR_Aero Blasters (U).pce"
set S_FILENAME="Aero Blasters (U).pce"
set SCRIPTNAME="aeroblasterspce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
