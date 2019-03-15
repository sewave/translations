@echo off
set T_FILENAME="TR_BurgerTime (U) [!].nes"
set S_FILENAME="BurgerTime (U) [!].nes"
set SCRIPTNAME="burgertimenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
