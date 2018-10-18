@echo off
set T_FILENAME="TR_ECCO The Dolphin (UE) [!].gen"
set S_FILENAME="ECCO The Dolphin (UE) [!].gen"
set SCRIPTNAME="eccosmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
