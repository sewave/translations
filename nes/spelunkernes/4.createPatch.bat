@echo off
set T_FILENAME="TR_Spelunker (U) [!].nes"
set S_FILENAME="Spelunker (U) [!].nes"
set SCRIPTNAME="spelunkernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
