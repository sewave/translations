@echo off
set T_FILENAME="Eliminate Down (J) [!].bin"
set SCRIPTNAME="eliminatedownsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
