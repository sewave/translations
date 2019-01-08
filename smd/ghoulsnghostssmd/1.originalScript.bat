@echo off
set T_FILENAME="Ghouls 'N Ghosts (UE) (REV02) [!].gen"
set SCRIPTNAME="ghoulsnghostssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
