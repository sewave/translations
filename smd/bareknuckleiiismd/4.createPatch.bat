@echo off
set T_FILENAME="TR_Bare Knuckle III (Japan) [T+ENG].md"
set S_FILENAME="Bare Knuckle III (Japan).md"
set SCRIPTNAME="bareknuckleiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
