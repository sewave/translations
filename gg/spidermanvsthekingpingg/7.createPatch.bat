@echo off
set T_FILENAME="TR_Spider-Man vs. The Kingpin (U) [!].gg"
set S_FILENAME="Spider-Man vs. The Kingpin (U) [!].gg"
set SCRIPTNAME="spidermanvsthekingpingg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
