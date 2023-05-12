@echo off
set T_FILENAME="TR_Splatterhouse 2 (USA).md"
set S_FILENAME="Splatterhouse 2 (USA).md"
set SCRIPTNAME="splatterhouse2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
