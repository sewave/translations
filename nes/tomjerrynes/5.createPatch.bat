@echo off
set T_FILENAME="TR_Tom & Jerry (U) [!].nes"
set S_FILENAME="Tom & Jerry (U) [!].nes"
set SCRIPTNAME="tomjerrynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
