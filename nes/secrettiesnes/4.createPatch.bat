@echo off
set T_FILENAME="TR_Secret Ties (U) (Prototype).nes"
set S_FILENAME="Secret Ties (U) (Prototype).nes"
set SCRIPTNAME="secrettiesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
