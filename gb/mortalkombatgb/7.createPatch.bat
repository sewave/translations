@echo off
set T_FILENAME="TR_Mortal Kombat (U) [!].gb"
set S_FILENAME="Mortal Kombat (U) [!].gb"
set SCRIPTNAME="mortalkombatgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
