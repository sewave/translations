@echo off 
set T_FILENAME="TR_Prince of Persia (E) [S][!].gg"
set S_FILENAME="Prince of Persia (E) [S][!].gg"
set SCRIPTNAME="ppersiagg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
