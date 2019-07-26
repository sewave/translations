@echo off
set T_FILENAME="Bubble and Squeak (U) [!].bin"
set SCRIPTNAME="bubbleandsqueaksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
