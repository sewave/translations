@echo off
set T_FILENAME="James Pond II - Codename RoboCod (UE) [!].bin"
set SCRIPTNAME="jamespond2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
