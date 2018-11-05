@echo off
set T_FILENAME="Batman Returns (W) [!].gen"
set SCRIPTNAME="batmanreturnsssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
