@echo off
set T_FILENAME="TR_Ghouls 'N Ghosts (UE) (REV02) [!].gen"
set SCRIPTNAME="ghoulsnghostssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
