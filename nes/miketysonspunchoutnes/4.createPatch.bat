@echo off
set T_FILENAME="TR_Mike Tyson's Punch-Out!! (Japan, USA) (En) (Rev 1).nes"
set S_FILENAME="Mike Tyson's Punch-Out!! (Japan, USA) (En) (Rev 1).nes"
set SCRIPTNAME="miketysonspunchoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
