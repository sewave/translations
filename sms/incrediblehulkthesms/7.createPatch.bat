@echo off
set T_FILENAME="TR_Incredible Hulk, The (E) [!].sms"
set S_FILENAME="Incredible Hulk, The (E) [!].sms"
set SCRIPTNAME="incrediblehulkthesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
