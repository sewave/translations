@echo off
set T_FILENAME="TR_Mortal Kombat (World) (v1.1).md"
set S_FILENAME="Mortal Kombat (World) (v1.1).md"
set SCRIPTNAME="mortalkombatsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
