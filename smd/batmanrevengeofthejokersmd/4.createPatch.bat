@echo off
set T_FILENAME="TR_Batman - Revenge of the Joker (U) [!].gen"
set S_FILENAME="Batman - Revenge of the Joker (U) [!].gen"
set SCRIPTNAME="batmanrevengeofthejokersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
