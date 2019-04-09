@echo off
set T_FILENAME="TR_Getsufuu Maden (J) [T+ENG_nebulus].nes"
set SCRIPTNAME="getsufuumadennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 57D60:10,5FD10:200,5F810:200,453A0:10
pause
