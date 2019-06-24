@echo off
set T_FILENAME="TR_Cobra Command (U) [!].nes"
set S_FILENAME="Cobra Command (U) [!].nes"
set SCRIPTNAME="cobracommandnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
