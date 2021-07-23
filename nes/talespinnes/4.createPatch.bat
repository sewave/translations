@echo off
set T_FILENAME="TR_TaleSpin (USA).nes"
set S_FILENAME="TaleSpin (USA).nes"
set SCRIPTNAME="talespinnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
