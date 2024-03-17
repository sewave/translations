@echo off
set T_FILENAME="TR_Tintin in Tibet (Europe) (En,Fr,De,Nl) (SGB Enhanced).gb"
set S_FILENAME="Tintin in Tibet (Europe) (En,Fr,De,Nl) (SGB Enhanced).gb"
set SCRIPTNAME="tintinintibetgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
