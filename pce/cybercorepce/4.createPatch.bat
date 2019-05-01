@echo off
set T_FILENAME="TR_Cyber Core (U).pce"
set S_FILENAME="Cyber Core (U).pce"
set SCRIPTNAME="cybercorepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
