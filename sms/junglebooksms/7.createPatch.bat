@echo off
set T_FILENAME="TR_Jungle Book, The (UE) [!].sms"
set S_FILENAME="Jungle Book, The (UE) [!].sms"
set SCRIPTNAME="junglebooksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
