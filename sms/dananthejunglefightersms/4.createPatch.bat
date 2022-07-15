@echo off
set T_FILENAME="TR_Danan - The Jungle Fighter (Europe).sms"
set S_FILENAME="Danan - The Jungle Fighter (Europe).sms"
set SCRIPTNAME="dananthejunglefightersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
