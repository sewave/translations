@echo off
set T_FILENAME="TR_Space Invaders 91 (U) [c][!].bin"
set S_FILENAME="Space Invaders 91 (U) [c][!].bin"
set SCRIPTNAME="spaceinvaders91smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
