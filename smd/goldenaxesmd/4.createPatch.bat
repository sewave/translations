@echo off
set T_FILENAME="TR_Golden Axe (W) (REV01) [!].bin"
set S_FILENAME="Golden Axe (W) (REV01) [!].bin"
set SCRIPTNAME="goldenaxesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
