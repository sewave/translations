@echo off
set T_FILENAME="Flicky (UE) [!].gen"
set SCRIPTNAME="flickysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
