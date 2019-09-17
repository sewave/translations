@echo off
set T_FILENAME="Rolo to the Rescue (UE) [!].bin"
set SCRIPTNAME="rolototherescuesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
