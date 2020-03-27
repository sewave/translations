@echo off
set T_FILENAME="TR_Xenon 2 - Megablast (E) [c][!].gen"
set S_FILENAME="Xenon 2 - Megablast (E) [c][!].gen"
set SCRIPTNAME="xenon2megablastsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
