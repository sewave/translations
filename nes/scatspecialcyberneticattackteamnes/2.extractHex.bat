@echo off
set T_FILENAME="TR_S.C.A.T. - Special Cybernetic Attack Team (U) [!].nes"
set SCRIPTNAME="scatspecialcyberneticattackteamnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AE10:90,3AF40:50,20E10:100,202C0:10,20300:10
pause
