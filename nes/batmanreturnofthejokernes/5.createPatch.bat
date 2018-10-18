@echo off
set T_FILENAME="TR_Batman - Return of the Joker (U) [!].nes"
set S_FILENAME="Batman - Return of the Joker (U) [!].nes"
set SCRIPTNAME="batmanreturnofthejokernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
