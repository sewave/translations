@echo off
set T_FILENAME="TR_Bonnie_and_Clyde.tap"
set S_FILENAME="Bonnie_and_Clyde.tap"
set SCRIPTNAME="bonnieandclydetap"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
