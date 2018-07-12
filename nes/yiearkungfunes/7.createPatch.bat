@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (J) (V1.4) [!].nes"
set S_FILENAME="Yie Ar Kung-Fu (J) (V1.4) [!].nes"
set SCRIPTNAME="yiearkungfunes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
