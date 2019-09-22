@echo off
set T_FILENAME="TR_Lion King, The (USA).gb"
set SCRIPTNAME="lionkingthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 57529:300,573A7:10,57437:10,574F7:10
pause
