@echo off
set T_FILENAME="TR_Aladdin (E) [!].nes"
set S_FILENAME="Aladdin (E) [!].nes"
set SCRIPTNAME="aladdinnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
