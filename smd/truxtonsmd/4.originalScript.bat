@echo off
set T_FILENAME="Truxton (W) [!].gen"
set SCRIPTNAME="truxtonsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
