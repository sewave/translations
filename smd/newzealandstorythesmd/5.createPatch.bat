@echo off
set T_FILENAME="TR_New Zealand Story, The (J) [!].gen"
set S_FILENAME="New Zealand Story, The (J) [!].gen"
set SCRIPTNAME="newzealandstorythesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
