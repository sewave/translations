@echo off
set T_FILENAME="TR_Adventures of Lolo (U) [!].nes"
set S_FILENAME="Adventures of Lolo (U) [!].nes"
set SCRIPTNAME="adventuresoflolones"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
