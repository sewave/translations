@echo off
set T_FILENAME="TR_Godzilla - Monster of Monsters! (USA).nes"
set SCRIPTNAME="godzillamonsterofmonstersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3EA50:40,3EE10:200,21310:80,20B10:200
pause
