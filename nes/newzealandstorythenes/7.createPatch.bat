@echo off
set T_FILENAME="TR_New Zealand Story, The (E) [!].nes"
set S_FILENAME="New Zealand Story, The (E) [!].nes"
set SCRIPTNAME="newzealandstorythenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
