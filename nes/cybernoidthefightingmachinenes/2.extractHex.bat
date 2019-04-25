@echo off
set T_FILENAME="TR_Cybernoid - The Fighting Machine (U) [!].nes"
set SCRIPTNAME="cybernoidthefightingmachinenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E210:100,E410:100,E610:100,E810:100,EA10:100,EC10:100
pause
