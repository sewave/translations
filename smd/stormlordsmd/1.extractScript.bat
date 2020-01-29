@echo off
set T_FILENAME="Stormlord (U) [!].bin"
set SCRIPTNAME="stormlordsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
