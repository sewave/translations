@echo off
set T_FILENAME="TR_Dan Laser (Sachen) [!].gb"
set S_FILENAME="Dan Laser (Sachen) [!].gb"
set SCRIPTNAME="danlasergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
