@echo off 
set T_FILENAME="TR_Toki - Going Ape Spit (UE) [c][!].bin"
set SCRIPTNAME="tokismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 441B8-441F7
pause 
