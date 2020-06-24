@echo off
set T_FILENAME="TR_Noah's Ark (Europe).nes"
set S_FILENAME="Noah's Ark (Europe).nes"
set SCRIPTNAME="noahsarknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
