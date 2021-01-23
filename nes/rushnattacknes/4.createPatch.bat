@echo off
set T_FILENAME="TR_Rush'n Attack (USA).nes"
set S_FILENAME="Rush'n Attack (USA).nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
