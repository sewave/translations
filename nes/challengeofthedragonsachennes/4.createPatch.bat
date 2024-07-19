@echo off
set T_FILENAME="TR_Challenge of the Dragon (Asia) (En) (Sachen) (Unl).nes"
set S_FILENAME="Challenge of the Dragon (Asia) (En) (Sachen) (Unl).nes"
set SCRIPTNAME="challengeofthedragonsachennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
