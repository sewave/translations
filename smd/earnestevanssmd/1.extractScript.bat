@echo off
set T_FILENAME="Earnest Evans (U) [!].bin"
set SCRIPTNAME="earnestevanssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
