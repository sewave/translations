@echo off
set T_FILENAME="TR_Menace Beach (USA) (Unl).nes"
set S_FILENAME="Menace Beach (USA) (Unl).nes"
set SCRIPTNAME="menacebeachnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
