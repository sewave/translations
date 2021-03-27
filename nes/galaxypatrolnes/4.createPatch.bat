@echo off
set T_FILENAME="TR_galaxy_patrol.nes"
set S_FILENAME="galaxy_patrol.nes"
set SCRIPTNAME="galaxypatrolnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
