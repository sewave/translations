@echo off
set T_FILENAME="TR_Defender II (U) [!].nes"
set S_FILENAME="Defender II (U) [!].nes"
set SCRIPTNAME="defenderiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
