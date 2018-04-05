@echo off 
set T_FILENAME="Kid Dracula (U) [!].gb"
set SCRIPTNAME="kiddraculagb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
