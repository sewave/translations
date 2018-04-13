@echo off
set T_FILENAME="TR_Atomic Runner (U) [!].gen"
set S_FILENAME="Atomic Runner (U) [!].gen"
set SCRIPTNAME="atomicrunnerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
