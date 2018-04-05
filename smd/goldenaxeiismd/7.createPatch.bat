@echo off
set T_FILENAME="TR_Golden Axe II (W) [!].bin"
set S_FILENAME="Golden Axe II (W) [!].bin"
set SCRIPTNAME="goldenaxeiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
