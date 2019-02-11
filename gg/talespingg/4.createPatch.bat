@echo off
set T_FILENAME="TR_Tale Spin (U) [!].gg"
set S_FILENAME="Tale Spin (U) [!].gg"
set SCRIPTNAME="talespingg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
