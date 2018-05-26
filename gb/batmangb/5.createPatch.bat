@echo off
set T_FILENAME="TR_Batman (JU) [!].gb"
set S_FILENAME="Batman (JU) [!].gb"
set SCRIPTNAME="batmangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
