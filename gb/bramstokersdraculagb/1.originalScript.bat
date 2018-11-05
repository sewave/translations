@echo off
set T_FILENAME="Bram Stoker's Dracula (UE) [!].gb"
set SCRIPTNAME="bramstokersdraculagb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
