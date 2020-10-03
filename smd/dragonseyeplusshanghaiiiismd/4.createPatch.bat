@echo off
set T_FILENAME="TR_Dragon's Eye Plus - Shanghai III (Japan).md"
set S_FILENAME="Dragon's Eye Plus - Shanghai III (Japan).md"
set SCRIPTNAME="dragonseyeplusshanghaiiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
