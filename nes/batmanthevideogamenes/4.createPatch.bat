@echo off
set T_FILENAME="TR_Batman - The Video Game (USA).nes"
set S_FILENAME="Batman - The Video Game (USA).nes"
set SCRIPTNAME="batmanthevideogamenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
