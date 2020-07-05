@echo off
set T_FILENAME="TR_Tasac (Asia) (Ja) (Unl).nes"
set S_FILENAME="Tasac (Asia) (Ja) (Unl).nes"
set SCRIPTNAME="tasacnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
