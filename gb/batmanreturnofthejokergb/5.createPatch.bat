@echo off
set T_FILENAME="TR_Batman - Return of the Joker (U) [!].gb"
set S_FILENAME="Batman - Return of the Joker (U) [!].gb"
set SCRIPTNAME="batmanreturnofthejokergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
