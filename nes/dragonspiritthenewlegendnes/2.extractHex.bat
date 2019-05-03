@echo off
set T_FILENAME="TR_Dragon Spirit - The New Legend (U) [!].nes"
set SCRIPTNAME="dragonspiritthenewlegendnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21210:30,20010:100,203B0:20,213C0:10,21470:10,214B0:20,21520:10,215F0:20,216C0:10
pause
