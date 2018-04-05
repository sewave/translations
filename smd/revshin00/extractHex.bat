@echo off 
set T_FILENAME="TR_Revenge of Shinobi, The (W) (REV00) [!].gen"
set SCRIPTNAME="revshin00"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
