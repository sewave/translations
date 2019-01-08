@echo off
set T_FILENAME="TR_Ghouls 'N Ghosts (UE) (REV02) [!].gen"
set S_FILENAME="Ghouls 'N Ghosts (UE) (REV02) [!].gen"
set SCRIPTNAME="ghoulsnghostssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
