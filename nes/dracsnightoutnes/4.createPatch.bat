@echo off
set T_FILENAME="TR_Drac's Night Out (USA) (Proto).nes"
set S_FILENAME="Drac's Night Out (USA) (Proto).nes"
set SCRIPTNAME="dracsnightoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
