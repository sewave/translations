@echo off
set T_FILENAME="TR_Lemmings (Japan, USA) (v1.1).md"
set S_FILENAME="Lemmings (Japan, USA) (v1.1).md"
set SCRIPTNAME="lemmingssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
