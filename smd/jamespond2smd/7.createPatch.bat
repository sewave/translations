@echo off
set T_FILENAME="TR_James Pond II - Codename RoboCod (UE) [!].bin"
set S_FILENAME="James Pond II - Codename RoboCod (UE) [!].bin"
set SCRIPTNAME="jamespond2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
