@echo off
set T_FILENAME="TR_Knuckles' Chaotix (JU) (32X) [!].32x"
set S_FILENAME="Knuckles' Chaotix (JU) (32X) [!].32x"
set SCRIPTNAME="knuckleschaotix32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
