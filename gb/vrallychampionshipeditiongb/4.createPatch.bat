@echo off
set T_FILENAME="TR_V-Rally - Championship Edition (U) (M3) [M][!].gb"
set S_FILENAME="V-Rally - Championship Edition (U) (M3) [M][!].gb"
set SCRIPTNAME="vrallychampionshipeditiongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
