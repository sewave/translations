@echo off 
set T_FILENAME="TR_Rollergames (U) [!].nes"
set S_FILENAME="Rollergames (U) [!].nes"
set SCRIPTNAME="rollergames"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
