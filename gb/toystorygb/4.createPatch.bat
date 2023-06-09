@echo off
set T_FILENAME="TR_Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set S_FILENAME="Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set SCRIPTNAME="toystorygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
