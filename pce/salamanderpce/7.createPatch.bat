@echo off
set T_FILENAME="TR_Salamander (J).pce"
set S_FILENAME="Salamander (J).pce"
set SCRIPTNAME="salamanderpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
