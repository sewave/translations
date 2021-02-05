@echo off
set T_FILENAME="TR_Top Gear 3000 (USA).sfc"
set S_FILENAME="Top Gear 3000 (USA).sfc"
set SCRIPTNAME="topgear3000sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
