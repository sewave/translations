@echo off
set T_FILENAME="TR_Puyo Pop (World) (En,Ja) (v1.06).ngc"
set SCRIPTNAME="puyopopngc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
