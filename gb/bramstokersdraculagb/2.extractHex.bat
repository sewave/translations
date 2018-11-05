@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (UE) [!].gb"
set SCRIPTNAME="bramstokersdraculagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
