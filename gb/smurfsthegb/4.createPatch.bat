@echo off
set T_FILENAME="TR_Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set S_FILENAME="Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set SCRIPTNAME="smurfsthegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
