@echo off
set T_FILENAME="TR_Arrow Flash (UE) [!].bin"
set S_FILENAME="Arrow Flash (UE) [!].bin"
set SCRIPTNAME="arrowflashsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
