@echo off
set T_FILENAME="TR_Golden Axe III (J) [!].bin"
set S_FILENAME="Golden Axe III (J) [!].bin"
set SCRIPTNAME="goldenaxeiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
