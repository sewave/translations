@echo off
set T_FILENAME="TR_Super Volley Ball (USA).md"
set S_FILENAME="Super Volley Ball (USA).md"
set SCRIPTNAME="supervolleyballsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
