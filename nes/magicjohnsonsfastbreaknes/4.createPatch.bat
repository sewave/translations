@echo off
set T_FILENAME="TR_Magic Johnson's Fast Break (USA).nes"
set S_FILENAME="Magic Johnson's Fast Break (USA).nes"
set SCRIPTNAME="magicjohnsonsfastbreaknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
