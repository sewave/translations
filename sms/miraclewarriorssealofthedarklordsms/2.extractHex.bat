@echo off
set T_FILENAME="TR_Miracle Warriors - Seal of the Dark Lord (UE) [!].sms"
set SCRIPTNAME="miraclewarriorssealofthedarklordsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
