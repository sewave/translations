@echo off 
set T_FILENAME="TR_Shinobi III - Return of the Ninja Master (U) [!].bin"
set S_FILENAME="Shinobi III - Return of the Ninja Master (U) [!].bin"
set SCRIPTNAME="shinobi3"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
