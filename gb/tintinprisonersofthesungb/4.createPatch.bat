@echo off
set T_FILENAME="TR_Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set S_FILENAME="Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set SCRIPTNAME="tintinprisonersofthesungb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
