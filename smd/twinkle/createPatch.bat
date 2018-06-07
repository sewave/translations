@echo off 
set T_FILENAME="TR_Twinkle Tale (J) [T+Eng20070328_MIJET].bin"
set S_FILENAME="Twinkle Tale (J) [!].bin"
set SCRIPTNAME="twinkle"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
