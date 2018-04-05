@echo off
set T_FILENAME="TR_Hokuto no Ken (J) [T+ENG].sms"
set S_FILENAME="Hokuto no Ken (J) [!].sms"
set SCRIPTNAME="hokutonokensms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
