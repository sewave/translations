@echo off
set T_FILENAME="TR_Warrior of Rome II (USA).md"
set S_FILENAME="Warrior of Rome II (USA).md"
set SCRIPTNAME="warriorofromeiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
