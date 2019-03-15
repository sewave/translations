@echo off
set T_FILENAME="TR_Excitebike (JU) [!].nes"
set S_FILENAME="Excitebike (JU) [!].nes"
set SCRIPTNAME="excitebikenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
