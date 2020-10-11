@echo off
set T_FILENAME="TR_Astro Rabby (Japan).gb"
set S_FILENAME="Astro Rabby (Japan).gb"
set SCRIPTNAME="astrorabbygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
