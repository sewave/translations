@echo off
set T_FILENAME="TR_Destination Earthstar (U) [!].nes"
set S_FILENAME="Destination Earthstar (U) [!].nes"
set SCRIPTNAME="destinationearthstarnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
