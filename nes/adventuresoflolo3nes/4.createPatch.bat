@echo off
set T_FILENAME="TR_Adventures of Lolo 3 (U) [!].nes"
set S_FILENAME="Adventures of Lolo 3 (U) [!].nes"
set SCRIPTNAME="adventuresoflolo3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
