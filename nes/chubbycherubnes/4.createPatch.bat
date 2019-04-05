@echo off
set T_FILENAME="TR_Chubby Cherub (U) [!].nes"
set S_FILENAME="Chubby Cherub (U) [!].nes"
set SCRIPTNAME="chubbycherubnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
