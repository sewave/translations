@echo off
set T_FILENAME="Tinhead (U) [!].gen"
set SCRIPTNAME="tinheadssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
