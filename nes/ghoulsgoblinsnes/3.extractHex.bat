@echo off
set T_FILENAME="TR_Ghosts 'N Goblins (U) [!].nes"
set SCRIPTNAME="ghoulsgoblinsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
