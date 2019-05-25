@echo off
set T_FILENAME="TR_Crystal's Pony Tale (U) [!].bin"
set S_FILENAME="Crystal's Pony Tale (U) [!].bin"
set SCRIPTNAME="crystalsponytalesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
