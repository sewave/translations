@echo off
set T_FILENAME="Batman Forever (W) [!].gen"
set SCRIPTNAME="batmanforeversmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
