@echo off 
set T_FILENAME="TR_Bubble Bobble (E) [!].sms"
set S_FILENAME="Bubble Bobble (E) [!].sms"
set SCRIPTNAME="bubblebobblesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
