@echo off
set T_FILENAME="TR_New Zealand Story, The (Japan).pce"
set S_FILENAME="New Zealand Story, The (Japan).pce"
set SCRIPTNAME="newzealandstorythepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
