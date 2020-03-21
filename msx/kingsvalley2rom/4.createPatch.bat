@echo off
set T_FILENAME="TR_King's Valley 2 (1988) (Konami) (J).rom"
set S_FILENAME="King's Valley 2 (1988) (Konami) (J).rom"
set SCRIPTNAME="kingsvalley2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
