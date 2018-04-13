@echo off
set T_FILENAME="TR_Low G Man - The Low Gravity Man (U) [!].nes"
set S_FILENAME="Low G Man - The Low Gravity Man (U) [!].nes"
set SCRIPTNAME="lowgmanthelowgravitymannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
