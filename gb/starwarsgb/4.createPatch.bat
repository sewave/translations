@echo off
set T_FILENAME="TR_Star Wars (U) (V1.1) [!].gb"
set S_FILENAME="Star Wars (U) (V1.1) [!].gb"
set SCRIPTNAME="starwarsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
