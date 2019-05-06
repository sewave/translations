@echo off
set T_FILENAME="TR_Fire Shark (U) [!].bin"
set S_FILENAME="Fire Shark (U) [!].bin"
set SCRIPTNAME="firesharksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
