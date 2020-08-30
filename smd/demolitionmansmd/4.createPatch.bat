@echo off
set T_FILENAME="TR_Demolition Man (USA, Europe).md"
set S_FILENAME="Demolition Man (USA, Europe).md"
set SCRIPTNAME="demolitionmansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
