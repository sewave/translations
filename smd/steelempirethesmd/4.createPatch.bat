@echo off
set T_FILENAME="TR_Steel Empire, The (UE) [!].bin"
set S_FILENAME="Steel Empire, The (UE) [!].bin"
set SCRIPTNAME="steelempirethesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
