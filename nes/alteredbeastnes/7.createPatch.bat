@echo off
set T_FILENAME="TR_Juuouki (J) [T+Eng1.00_akadewboy].nes"
set S_FILENAME="Juuouki (J) [!].nes"
set SCRIPTNAME="juuoukines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
