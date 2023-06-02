@echo off
set T_FILENAME="TR_Hudson's Adventure Island (USA).nes"
set S_FILENAME="Hudson's Adventure Island (USA).nes"
set SCRIPTNAME="hudsonsadventureislandnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
