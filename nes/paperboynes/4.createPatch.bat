@echo off
set T_FILENAME="TR_Paperboy (USA).nes"
set S_FILENAME="Paperboy (USA).nes"
set SCRIPTNAME="paperboynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
