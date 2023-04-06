@echo off
set T_FILENAME="TR_Gunship (Europe).md"
set S_FILENAME="Gunship (Europe).md"
set SCRIPTNAME="gunshipsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
