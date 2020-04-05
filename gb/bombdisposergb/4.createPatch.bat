@echo off
set T_FILENAME="TR_Bomb Disposer (Sachen 4-in-1 Vol. 6) (Unl) [!].gb"
set S_FILENAME="Bomb Disposer (Sachen 4-in-1 Vol. 6) (Unl) [!].gb"
set SCRIPTNAME="bombdisposergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
