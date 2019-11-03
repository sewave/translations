@echo off
set T_FILENAME="TR_Ironsword - Wizards & Warriors II (U) [!].nes"
set S_FILENAME="Ironsword - Wizards & Warriors II (U) [!].nes"
set SCRIPTNAME="ironswordwizardswarriorsiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
