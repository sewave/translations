@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (World).md"
set S_FILENAME="Shadow Dancer - The Secret of Shinobi (World).md"
set SCRIPTNAME="shadowdancerthesecretofshinobismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
