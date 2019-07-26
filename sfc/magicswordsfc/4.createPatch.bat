@echo off
set T_FILENAME="TR_Magic Sword (U).smc"
set S_FILENAME="Magic Sword (U).smc"
set SCRIPTNAME="magicswordsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
