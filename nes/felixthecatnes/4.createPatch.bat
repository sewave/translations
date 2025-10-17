@echo off
set T_FILENAME="TR_Felix the Cat (USA) (Hudson).nes"
set S_FILENAME="Felix the Cat (USA) (Hudson).nes"
set SCRIPTNAME="felixthecatnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
