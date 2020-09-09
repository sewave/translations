@echo off
set T_FILENAME="TR_Toobin' (USA) (Unl).nes"
set S_FILENAME="Toobin' (USA) (Unl).nes"
set SCRIPTNAME="toobinnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
