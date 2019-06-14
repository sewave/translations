@echo off
set T_FILENAME="Warlock (UE) [!].gen"
set SCRIPTNAME="warlocksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
