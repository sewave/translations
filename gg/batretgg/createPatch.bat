@echo off 
set T_FILENAME="TR_Batman Returns (U) [!].gg"
set S_FILENAME="Batman Returns (U) [!].gg"
set SCRIPTNAME="batretgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
