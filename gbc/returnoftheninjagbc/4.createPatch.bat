@echo off
set T_FILENAME="TR_Return of the Ninja (U) [C][!].gbc"
set S_FILENAME="Return of the Ninja (U) [C][!].gbc"
set SCRIPTNAME="returnoftheninjagbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
