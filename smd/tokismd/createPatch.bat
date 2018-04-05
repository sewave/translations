@echo off 
set T_FILENAME="TR_Toki - Going Ape Spit (UE) [c][!].bin"
set S_FILENAME="Toki - Going Ape Spit (UE) [c][!].bin"
set SCRIPTNAME="tokismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
