@echo off
set T_FILENAME="TR_Socket (U) [!].bin"
set S_FILENAME="Socket (U) [!].bin"
set SCRIPTNAME="socketsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
