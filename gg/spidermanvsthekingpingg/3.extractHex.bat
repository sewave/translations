@echo off
set T_FILENAME="TR_Spider-Man vs. The Kingpin (U) [!].gg"
set SCRIPTNAME="spidermanvsthekingpingg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
