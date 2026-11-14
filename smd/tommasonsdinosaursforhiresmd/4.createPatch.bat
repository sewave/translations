@echo off
set T_FILENAME="TR_Tom Mason's Dinosaurs for Hire (USA).md"
set S_FILENAME="Tom Mason's Dinosaurs for Hire (USA).md"
set SCRIPTNAME="tommasonsdinosaursforhiresmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
