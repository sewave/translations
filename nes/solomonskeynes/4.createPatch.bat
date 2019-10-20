@echo off
set T_FILENAME="TR_Solomon's Key (U) [!].nes"
set S_FILENAME="Solomon's Key (U) [!].nes"
set SCRIPTNAME="solomonskeynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
