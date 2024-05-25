@echo off
set T_FILENAME="TR_Goofy's Hysterical History Tour (USA).md"
set S_FILENAME="Goofy's Hysterical History Tour (USA).md"
set SCRIPTNAME="goofyshystericalhistorytoursmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
