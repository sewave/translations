@echo off
set T_FILENAME="TR_P.O.W. - Prisoners of War (USA).nes"
set S_FILENAME="P.O.W. - Prisoners of War (USA).nes"
set SCRIPTNAME="powprisonersofwarnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
