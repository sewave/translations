@echo off
set T_FILENAME="TR_10-Yard Fight (USA, Europe).nes"
set S_FILENAME="10-Yard Fight (USA, Europe).nes"
set SCRIPTNAME="10yardfightnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
