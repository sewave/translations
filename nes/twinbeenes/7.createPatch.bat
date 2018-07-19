@echo off
set T_FILENAME="TR_TwinBee (J) [!].nes"
set S_FILENAME="TwinBee (J) [!].nes"
set SCRIPTNAME="twinbeenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
