@echo off 
set T_FILENAME="Robocop 3 (UE) [!].gen"
set SCRIPTNAME="robocop3smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
