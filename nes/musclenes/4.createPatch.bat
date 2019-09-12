@echo off
set T_FILENAME="TR_M.U.S.C.L.E. (U) [!].nes"
set S_FILENAME="M.U.S.C.L.E. (U) [!].nes"
set SCRIPTNAME="musclenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
