@echo off
set T_FILENAME="TR_Incredible Hulk, The (U) [!].gg"
set S_FILENAME="Incredible Hulk, The (U) [!].gg"
set SCRIPTNAME="incrediblehulkthegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
