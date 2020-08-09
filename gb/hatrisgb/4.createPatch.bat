@echo off
set T_FILENAME="TR_Hatris (Japan, USA).gb"
set S_FILENAME="Hatris (Japan, USA).gb"
set SCRIPTNAME="hatrisgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
