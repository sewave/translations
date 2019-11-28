@echo off
set T_FILENAME="TR_Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set S_FILENAME="Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set SCRIPTNAME="bousoutokkyuusosstoptheexpressrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
