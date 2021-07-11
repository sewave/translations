@echo off
set T_FILENAME="TR_Code Name - Viper (USA).nes"
set S_FILENAME="Code Name - Viper (USA).nes"
set SCRIPTNAME="codenamevipernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
