@echo off
set T_FILENAME="TR_Junction (JU) [!].bin"
set S_FILENAME="Junction (JU) [!].bin"
set SCRIPTNAME="junctionsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
