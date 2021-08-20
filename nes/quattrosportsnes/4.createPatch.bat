@echo off
set T_FILENAME="TR_Quattro Sports (USA) (Unl).nes"
set S_FILENAME="Quattro Sports (USA) (Unl).nes"
set SCRIPTNAME="quattrosportsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
