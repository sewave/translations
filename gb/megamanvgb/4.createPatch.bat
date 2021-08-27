@echo off
set T_FILENAME="TR_Mega Man V (USA) (SGB Enhanced).gb"
set S_FILENAME="Mega Man V (USA) (SGB Enhanced).gb"
set SCRIPTNAME="megamanvgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
