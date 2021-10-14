@echo off
set T_FILENAME="TR_Super Dodge Ball (USA).nes"
set SCRIPTNAME="superdodgeballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2A500:10,2A5F0:20,2A9A0:10,2AFC0:10,39C60:180,38CA0:20,38F50:10
pause
