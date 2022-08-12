@echo off
set T_FILENAME="TR_MUSHA - Metallic Uniframe Super Hybrid Armor (USA).md"
set S_FILENAME="MUSHA - Metallic Uniframe Super Hybrid Armor (USA).md"
set SCRIPTNAME="mushametallicuniframesuperhybridarmorsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
