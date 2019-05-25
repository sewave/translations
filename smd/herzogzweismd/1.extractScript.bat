@echo off
set T_FILENAME="Herzog Zwei (UE) [!].bin"
set SCRIPTNAME="herzogzweismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
