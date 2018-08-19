@echo off
set T_FILENAME="Back to the Future Part III (U) [!].gen"
set SCRIPTNAME="backtothefuturepartiiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
