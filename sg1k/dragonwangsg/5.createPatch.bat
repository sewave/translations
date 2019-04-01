@echo off
set T_FILENAME="TR_Dragon Wang (SG-1000) (Ver-A).sg"
set S_FILENAME="Dragon Wang (SG-1000) (Ver-A).sg"
set SCRIPTNAME="dragonwangsg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
