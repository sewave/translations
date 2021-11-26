@echo off
set T_FILENAME="TR_Double Dungeons - W (USA).pce"
set S_FILENAME="Double Dungeons - W (USA).pce"
set SCRIPTNAME="doubledungeonspce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
