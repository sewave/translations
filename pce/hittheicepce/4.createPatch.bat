@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).pce"
set S_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA).pce"
set SCRIPTNAME="hittheicepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
