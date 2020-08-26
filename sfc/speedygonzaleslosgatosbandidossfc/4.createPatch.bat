@echo off
set T_FILENAME="TR_Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set S_FILENAME="Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set SCRIPTNAME="speedygonzaleslosgatosbandidossfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
