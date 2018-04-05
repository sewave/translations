@echo off 
set T_FILENAME="TR_Gaiares (JU) [!].gen"
set SCRIPTNAME="gaiares"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
