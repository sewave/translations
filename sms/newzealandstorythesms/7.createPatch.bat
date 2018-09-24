@echo off
set T_FILENAME="TR_New Zealand Story, The (E) [!].sms"
set S_FILENAME="New Zealand Story, The (E) [!].sms"
set SCRIPTNAME="newzealandstorythesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
