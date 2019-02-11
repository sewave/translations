@echo off
set T_FILENAME="TR_Tale Spin (UE) [!].bin"
set S_FILENAME="Tale Spin (UE) [!].bin"
set SCRIPTNAME="talespinsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
