@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (UE) [!].gb"
set S_FILENAME="Bram Stoker's Dracula (UE) [!].gb"
set SCRIPTNAME="bramstokersdraculagb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
