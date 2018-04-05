@echo off 
set T_FILENAME="TR_Decap Attack (UE) [!].gen"
set S_FILENAME="Decap Attack (UE) [!].gen"
set SCRIPTNAME="decapatk"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
