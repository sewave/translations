@echo off
set T_FILENAME="TR_STING.nes"
set S_FILENAME="STING.nes"
set SCRIPTNAME="stingnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
