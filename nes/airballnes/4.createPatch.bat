@echo off
set T_FILENAME="TR_Airball (Unknown) (Proto 2).nes"
set S_FILENAME="Airball (Unknown) (Proto 2).nes"
set SCRIPTNAME="airballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause