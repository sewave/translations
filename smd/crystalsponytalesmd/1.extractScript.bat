@echo off
set T_FILENAME="Crystal's Pony Tale (U) [!].bin"
set SCRIPTNAME="crystalsponytalesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
