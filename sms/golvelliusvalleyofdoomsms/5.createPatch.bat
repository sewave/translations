@echo off
set T_FILENAME="TR_Golvellius - Valley of Doom (UE) [!].sms"
set S_FILENAME="Golvellius - Valley of Doom (UE) [!].sms"
set SCRIPTNAME="golvelliusvalleyofdoomsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
