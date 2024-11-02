@echo off
set T_FILENAME="TR_Kick Off (Europe).nes"
set S_FILENAME="Kick Off (Europe).nes"
set SCRIPTNAME="kickoffnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
