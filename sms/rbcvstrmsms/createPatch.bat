@echo off 
set T_FILENAME="TR_Robocop versus The Terminator (UE) [!].sms"
set S_FILENAME="Robocop versus The Terminator (UE) [!].sms"
set SCRIPTNAME="rbcvstrmsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
