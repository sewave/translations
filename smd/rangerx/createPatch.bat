@echo off 
set T_FILENAME="TR_Ranger-X (U) [!].gen"
set S_FILENAME="Ranger-X (U) [!].gen"
set SCRIPTNAME="rangerx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
