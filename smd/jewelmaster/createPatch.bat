@echo off 
set T_FILENAME="TR_Jewel Master (UE) [!].bin"
set S_FILENAME="Jewel Master (UE) [!].bin"
set SCRIPTNAME="jewelmaster"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
