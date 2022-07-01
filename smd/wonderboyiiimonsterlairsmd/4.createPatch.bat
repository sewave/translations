@echo off
set T_FILENAME="TR_Wonder Boy III - Monster Lair (Japan, Europe).md"
set S_FILENAME="Wonder Boy III - Monster Lair (Japan, Europe).md"
set SCRIPTNAME="wonderboyiiimonsterlairsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
