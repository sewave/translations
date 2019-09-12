@echo off
set T_FILENAME="TR_M.U.S.C.L.E. (U) [!].nes"
set SCRIPTNAME="musclenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5220:10
pause
