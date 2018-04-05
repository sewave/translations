@echo off
set T_FILENAME="TR_Gun.Smoke (U) [!].nes"
set S_FILENAME="Gun.Smoke (U) [!].nes"
set SCRIPTNAME="gunsmokenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
