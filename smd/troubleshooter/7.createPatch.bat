@echo off
set T_FILENAME="TR_Trouble Shooter (U) [!].bin"
set S_FILENAME="Trouble Shooter (U) [!].bin"
set SCRIPTNAME="troubleshooter"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
