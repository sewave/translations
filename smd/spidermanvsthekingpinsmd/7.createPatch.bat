@echo off
set T_FILENAME="TR_Spider-Man vs The Kingpin (W) [!].bin"
set S_FILENAME="Spider-Man vs The Kingpin (W) [!].bin"
set SCRIPTNAME="spidermanvsthekingpinsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
