@echo off
set T_FILENAME="TR_Shadow of the Beast 2 (UE) [!].gen"
set S_FILENAME="Shadow of the Beast 2 (UE) [!].gen"
set SCRIPTNAME="shadowofthebeast2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
