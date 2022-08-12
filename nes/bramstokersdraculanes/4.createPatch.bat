@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (USA).nes"
set S_FILENAME="Bram Stoker's Dracula (USA).nes"
set SCRIPTNAME="bramstokersdraculanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
