@echo off
set T_FILENAME="TR_Section Z (U) [!].nes"
set S_FILENAME="Section Z (U) [!].nes"
set SCRIPTNAME="sectionznes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
