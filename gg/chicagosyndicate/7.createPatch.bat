@echo off
set T_FILENAME="TR_Chicago Syndicate (U) [!].gg"
set S_FILENAME="Chicago Syndicate (U) [!].gg"
set SCRIPTNAME="chicagosyndicate"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
