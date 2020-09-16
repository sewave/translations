@echo off
set T_FILENAME="TR_Spider-Man (USA, Europe) (Acclaim).md"
set S_FILENAME="Spider-Man (USA, Europe) (Acclaim).md"
set SCRIPTNAME="spidermansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
