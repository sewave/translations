@echo off
set T_FILENAME="TR_Moomin's Tale (Europe) (En,Fr,De).gbc"
set S_FILENAME="Moomin's Tale (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="moominstalegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
