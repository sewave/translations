@echo off
set T_FILENAME="TR_Swords and Serpents (USA).nes"
set S_FILENAME="Swords and Serpents (USA).nes"
set SCRIPTNAME="swordsandserpentsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
