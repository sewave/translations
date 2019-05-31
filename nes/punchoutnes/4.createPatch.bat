@echo off
set T_FILENAME="TR_Punch-Out!! (U) [!].nes"
set S_FILENAME="Punch-Out!! (U) [!].nes"
set SCRIPTNAME="punchoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
