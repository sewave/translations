@echo off
set T_FILENAME="TR_Xevious (U) [!].nes"
set S_FILENAME="Xevious (U) [!].nes"
set SCRIPTNAME="xeviousnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
