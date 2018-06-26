@echo off 
set T_FILENAME="TR_Pink Goes to Hollywood (U) [!].gen"
set S_FILENAME="Pink Goes to Hollywood (U) [!].gen"
set SCRIPTNAME="pinkhwsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
