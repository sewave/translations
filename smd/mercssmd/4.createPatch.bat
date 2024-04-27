@echo off
set T_FILENAME="TR_Senjou no Ookami II ~ Mercs (World).md"
set S_FILENAME="Senjou no Ookami II ~ Mercs (World).md"
set SCRIPTNAME="mercssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
