@echo off
set T_FILENAME="TR_City Connection (U) [!].nes"
set S_FILENAME="City Connection (U) [!].nes"
set SCRIPTNAME="cityconnectionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
