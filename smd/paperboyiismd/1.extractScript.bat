@echo off
set T_FILENAME="Paperboy II (U) [!].bin"
set SCRIPTNAME="paperboyiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
