@echo off
set T_FILENAME="M.U.S.C.L.E. (U) [!].nes"
set SCRIPTNAME="musclenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
