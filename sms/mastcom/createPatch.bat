@echo off 
set T_FILENAME="TR_Masters of Combat (E) [!].sms"
set S_FILENAME="Masters of Combat (E) [!].sms"
set SCRIPTNAME="mastcom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
