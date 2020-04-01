@echo off
set T_FILENAME="Virtua Fighter 2 (UE) [!].gen"
set SCRIPTNAME="virtuafighter2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
