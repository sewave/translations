@echo off
set T_FILENAME="TR_Town & Country Surf Designs - Thrilla's Surfari (USA).nes"
set S_FILENAME="Town & Country Surf Designs - Thrilla's Surfari (USA).nes"
set SCRIPTNAME="towncountrysurfdesignsthrillassurfarines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
