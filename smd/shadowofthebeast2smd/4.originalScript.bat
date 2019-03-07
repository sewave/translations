@echo off
set T_FILENAME="Shadow of the Beast 2 (UE) [!].gen"
set SCRIPTNAME="shadowofthebeast2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
