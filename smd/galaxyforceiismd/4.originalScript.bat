@echo off
set T_FILENAME="Galaxy Force II (W) (REV01) [!].gen"
set SCRIPTNAME="galaxyforceiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
