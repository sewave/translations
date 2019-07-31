@echo off
set T_FILENAME="TR_Ishido - The Way of the Stones (U) [c][!].bin"
set S_FILENAME="Ishido - The Way of the Stones (U) [c][!].bin"
set SCRIPTNAME="ishidothewayofthestonessmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
