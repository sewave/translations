@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set S_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set SCRIPTNAME="hittheicesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
