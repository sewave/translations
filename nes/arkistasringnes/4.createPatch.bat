@echo off
set T_FILENAME="TR_Arkista's Ring (U) [!].nes"
set S_FILENAME="Arkista's Ring (U) [!].nes"
set SCRIPTNAME="arkistasringnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
