@echo off
set T_FILENAME="TR_Castlevania - The Adventure (USA).gb"
set SCRIPTNAME="castlevaniatheadventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B39A:C0,BEAA:120,1394:60
pause
