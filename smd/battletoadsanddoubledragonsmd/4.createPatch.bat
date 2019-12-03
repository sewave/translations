@echo off
set T_FILENAME="TR_Battletoads and Double Dragon (U) [c][!].bin"
set S_FILENAME="Battletoads and Double Dragon (U) [c][!].bin"
set SCRIPTNAME="battletoadsanddoubledragonsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
