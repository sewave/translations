@echo off
set T_FILENAME="TR_Explosive Brick '94 (Sachen) [!].gb"
set SCRIPTNAME="explosivebrick94gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
