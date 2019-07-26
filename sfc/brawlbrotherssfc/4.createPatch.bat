@echo off
set T_FILENAME="TR_Brawl Brothers (U) [!].smc"
set S_FILENAME="Brawl Brothers (U) [!].smc"
set SCRIPTNAME="brawlbrotherssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
