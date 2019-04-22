@echo off
set T_FILENAME="TR_Bugs Bunny Crazy Castle, The (U) [!].nes"
set S_FILENAME="Bugs Bunny Crazy Castle, The (U) [!].nes"
set SCRIPTNAME="bugsbunnycrazycastlethenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
