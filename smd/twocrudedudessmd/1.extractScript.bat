@echo off
set T_FILENAME="Two Crude Dudes (U) [!].gen"
set SCRIPTNAME="twocrudedudessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
