@echo off
set T_FILENAME="TR_Flintstones, The (USA).md"
set S_FILENAME="Flintstones, The (USA).md"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
