@echo off
set T_FILENAME="TR_Fharanx (1985)(Enix)[By Django][BLOAD'CAS-',r].cas"
set SCRIPTNAME="fharanxmsx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
