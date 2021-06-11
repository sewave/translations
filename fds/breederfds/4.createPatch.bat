@echo off
set T_FILENAME="TR_Breeder (Japan) [b].fds"
set S_FILENAME="Breeder (Japan) [b].fds"
set SCRIPTNAME="breederfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
