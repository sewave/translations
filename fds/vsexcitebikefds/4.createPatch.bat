@echo off
set T_FILENAME="TR_Vs. Excitebike (Japan).fds"
set S_FILENAME="Vs. Excitebike (Japan).fds"
set SCRIPTNAME="vsexcitebikefds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
