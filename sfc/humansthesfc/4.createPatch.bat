@echo off
set T_FILENAME="TR_Humans, The (Europe).sfc"
set S_FILENAME="Humans, The (Europe).sfc"
set SCRIPTNAME="humansthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
