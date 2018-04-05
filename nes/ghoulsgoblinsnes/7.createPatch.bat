@echo off
set T_FILENAME="TR_Ghosts 'N Goblins (U) [!].nes"
set S_FILENAME="Ghosts 'N Goblins (U) [!].nes"
set SCRIPTNAME="ghoulsgoblinsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
