@echo off
set T_FILENAME="TR_The Curse Of Sherwood.tzx"
set S_FILENAME="The Curse Of Sherwood.tzx"
set SCRIPTNAME="thecurseofsherwoodtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
