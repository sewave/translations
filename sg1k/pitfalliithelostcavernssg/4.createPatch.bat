@echo off
set T_FILENAME="TR_Pitfall II - The Lost Caverns (Japan).sg"
set S_FILENAME="Pitfall II - The Lost Caverns (Japan).sg"
set SCRIPTNAME="pitfalliithelostcavernssg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
