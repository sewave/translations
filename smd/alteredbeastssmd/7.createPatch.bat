@echo off
set T_FILENAME="TR_Altered Beast (UE) (REV02) [!].gen"
set S_FILENAME="Altered Beast (UE) (REV02) [!].gen"
set SCRIPTNAME="alteredbeastssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
