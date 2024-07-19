@echo off
set T_FILENAME="TR_Urban Strike (USA, Europe).md"
set S_FILENAME="Urban Strike (USA, Europe).md"
set SCRIPTNAME="urbanstrikesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
