@echo off
set T_FILENAME="TR_BurgerTime (U) [!].nes"
set SCRIPTNAME="burgertimenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4D10:10,5040:80,52B0:10,53C0:20
pause
