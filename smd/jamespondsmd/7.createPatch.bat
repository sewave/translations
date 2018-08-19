@echo off
set T_FILENAME="TR_James Pond - Underwater Agent (UE) [!].bin"
set S_FILENAME="James Pond - Underwater Agent (UE) [!].bin"
set SCRIPTNAME="jamespondsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
