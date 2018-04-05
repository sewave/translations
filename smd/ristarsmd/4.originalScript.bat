@echo off
set T_FILENAME="Ristar (UE) [!].gen"
set SCRIPTNAME="ristarsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
