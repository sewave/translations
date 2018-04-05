@echo off 
set T_FILENAME="Target - Renegade (U) [!].nes"
set SCRIPTNAME="targetrenegadenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
