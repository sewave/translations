@echo off
set T_FILENAME="TR_Double Dragon 2 (U) [!].gb"
set S_FILENAME="Double Dragon 2 (U) [!].gb"
set SCRIPTNAME="doubledragon2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
