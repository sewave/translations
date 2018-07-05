@echo off
set T_FILENAME="TR_Goofy's Hysterical History Tour (U) [!].bin"
set S_FILENAME="Goofy's Hysterical History Tour (U) [!].bin"
set SCRIPTNAME="goofyhisterical"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
