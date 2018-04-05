@echo off 
set T_FILENAME="TR_Shinobi III - Return of the Ninja Master (U) [!].bin"
set SCRIPTNAME="shinobi3"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3A14C-3A1BB
pause 
