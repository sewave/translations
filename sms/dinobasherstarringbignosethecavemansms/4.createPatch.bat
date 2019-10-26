@echo off
set T_FILENAME="TR_Dinobasher Starring Bignose the Caveman (E) (Prototype) [!].sms"
set S_FILENAME="Dinobasher Starring Bignose the Caveman (E) (Prototype) [!].sms"
set SCRIPTNAME="dinobasherstarringbignosethecavemansms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
