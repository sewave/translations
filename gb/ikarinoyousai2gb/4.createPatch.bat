@echo off
set T_FILENAME="TR_Ikari no Yousai 2 (Japan) [T+ENG].gb"
set S_FILENAME="Ikari no Yousai 2 (Japan).gb"
set SCRIPTNAME="ikarinoyousai2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
