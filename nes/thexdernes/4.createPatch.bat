@echo off
set T_FILENAME="TR_Thexder (J) [!].nes"
set S_FILENAME="Thexder (J) [!].nes"
set SCRIPTNAME="thexdernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
