@echo off
set T_FILENAME="TR_Penguin Adventure (Korea) (Unl) (Pirate).sms"
set S_FILENAME="Penguin Adventure (Korea) (Unl) (Pirate).sms"
set SCRIPTNAME="penguinadventuresms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
