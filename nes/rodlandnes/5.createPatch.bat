@echo off
set T_FILENAME="TR_Rod Land (E) [!].nes"
set S_FILENAME="Rod Land (E) [!].nes"
set SCRIPTNAME="rodlandnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
