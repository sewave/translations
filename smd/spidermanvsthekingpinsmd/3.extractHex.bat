@echo off
set T_FILENAME="TR_Spider-Man vs The Kingpin (W) [!].bin"
set SCRIPTNAME="spidermanvsthekingpinsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
