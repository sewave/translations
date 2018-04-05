@echo off
set T_FILENAME="Valis III (U) [!].bin"
set SCRIPTNAME="valisiiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
