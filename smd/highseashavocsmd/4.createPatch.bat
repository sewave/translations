@echo off
set T_FILENAME="TR_High Seas Havoc (USA) (En,Ja).md"
set S_FILENAME="High Seas Havoc (USA) (En,Ja).md"
set SCRIPTNAME="highseashavocsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
