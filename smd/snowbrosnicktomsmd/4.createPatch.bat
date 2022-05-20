@echo off
set T_FILENAME="TR_Snow Bros. - Nick & Tom (Japan).md"
set S_FILENAME="Snow Bros. - Nick & Tom (Japan).md"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
