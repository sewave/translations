@echo off
set T_FILENAME="Puggsy (U) [!].bin"
set SCRIPTNAME="puggsysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
