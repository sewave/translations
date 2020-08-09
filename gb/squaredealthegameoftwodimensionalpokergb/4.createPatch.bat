@echo off
set T_FILENAME="TR_Square Deal - The Game of Two-Dimensional Poker (USA).gb"
set S_FILENAME="Square Deal - The Game of Two-Dimensional Poker (USA).gb"
set SCRIPTNAME="squaredealthegameoftwodimensionalpokergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
