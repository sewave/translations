@echo off 
set T_FILENAME="Robocop versus The Terminator (U) [!].gg"
set SCRIPTNAME="rbcvstrmgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
