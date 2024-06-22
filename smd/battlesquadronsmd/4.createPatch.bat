@echo off
set T_FILENAME="TR_Battle Squadron (USA, Europe).md"
set S_FILENAME="Battle Squadron (USA, Europe).md"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
