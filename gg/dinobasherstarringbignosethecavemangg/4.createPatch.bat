@echo off
set T_FILENAME="TR_Dinobasher - Starring Bignose the Caveman [Proto].gg"
set S_FILENAME="Dinobasher - Starring Bignose the Caveman [Proto].gg"
set SCRIPTNAME="dinobasherstarringbignosethecavemangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
