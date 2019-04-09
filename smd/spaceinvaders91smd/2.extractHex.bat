@echo off
set T_FILENAME="TR_Space Invaders 91 (U) [c][!].bin"
set SCRIPTNAME="spaceinvaders91smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
