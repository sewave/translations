@echo off
set T_FILENAME="TR_Dash Galaxy in the Alien Asylum (U) [!].nes"
set SCRIPTNAME="dashgalaxyinthealienasylumnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A0C0:10,A280:10
pause
