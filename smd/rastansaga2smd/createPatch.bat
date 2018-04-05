@echo off 
set T_FILENAME="TR_Rastan Saga II (U) [!].gen"
set S_FILENAME="Rastan Saga II (U) [!].gen"
set SCRIPTNAME="rastansaga2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
