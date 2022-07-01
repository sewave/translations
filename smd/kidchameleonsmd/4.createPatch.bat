@echo off
set T_FILENAME="TR_Kid Chameleon (USA, Europe).md"
set S_FILENAME="Kid Chameleon (USA, Europe).md"
set SCRIPTNAME="kidchameleonsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
