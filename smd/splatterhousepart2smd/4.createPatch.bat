@echo off
set T_FILENAME="TR_Splatterhouse Part 2 (Japan).md"
set S_FILENAME="Splatterhouse Part 2 (Japan).md"
set SCRIPTNAME="splatterhousepart2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
