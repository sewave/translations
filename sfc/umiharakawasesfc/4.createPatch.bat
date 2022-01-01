@echo off
set T_FILENAME="TR_Umihara Kawase (Japan) [T+ENG].sfc"
set S_FILENAME="Umihara Kawase (Japan).sfc"
set SCRIPTNAME="umiharakawasesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
