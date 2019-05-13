@echo off
set T_FILENAME="TR_Heavy Unit (J).pce"
set S_FILENAME="Heavy Unit (Japan).pce"
set SCRIPTNAME="heavyunitpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
