@echo off
set T_FILENAME="TR_Batman Returns (W) [!].gen"
set S_FILENAME="Batman Returns (W) [!].gen"
set SCRIPTNAME="batmanreturnsssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
