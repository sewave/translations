@echo off
set T_FILENAME="TR_Bonkers (UE) [!].bin"
set S_FILENAME="Bonkers (UE) [!].bin"
set SCRIPTNAME="bonkerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
