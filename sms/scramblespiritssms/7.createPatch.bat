@echo off
set T_FILENAME="TR_Scramble Spirits (UE) [!].sms"
set S_FILENAME="Scramble Spirits (UE) [!].sms"
set SCRIPTNAME="scramblespiritssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
