@echo off
set T_FILENAME="TR_Super Spike V'Ball (U) [!].nes"
set S_FILENAME="Super Spike V'Ball (U) [!].nes"
set SCRIPTNAME="superspikevballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
