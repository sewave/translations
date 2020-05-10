@echo off
set T_FILENAME="TR_Booby Kids (J) [!].nes"
set S_FILENAME="Booby Kids (J) [!].nes"
set SCRIPTNAME="boobykidsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
