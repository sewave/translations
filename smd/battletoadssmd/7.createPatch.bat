@echo off
set T_FILENAME="TR_Battletoads (W) [!].bin"
set S_FILENAME="Battletoads (W) [!].bin"
set SCRIPTNAME="battletoadssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
