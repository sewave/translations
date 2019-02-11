@echo off
set T_FILENAME="TR_Turrican (U).pce"
set S_FILENAME="Turrican (U).pce"
set SCRIPTNAME="turricanpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
