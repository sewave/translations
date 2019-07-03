@echo off 
set T_FILENAME="Air Diver (U) [!].bin"
set SCRIPTNAME="airdiversmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
