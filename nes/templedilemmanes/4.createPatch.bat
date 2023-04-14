@echo off
set T_FILENAME="TR_Temple Dilemma (USA) (Aftermarket) (Unl).nes"
set S_FILENAME="Temple Dilemma (USA) (Aftermarket) (Unl).nes"
set SCRIPTNAME="templedilemmanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
