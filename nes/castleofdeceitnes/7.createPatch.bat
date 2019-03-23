@echo off
set T_FILENAME="TR_Castle of Deceit (Bunch) [!].nes"
set S_FILENAME="Castle of Deceit (Bunch) [!].nes"
set SCRIPTNAME="castleofdeceitnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
