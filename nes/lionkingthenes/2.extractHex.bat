@echo off
set T_FILENAME="TR_Lion King, The (Europe).nes"
set SCRIPTNAME="lionkingthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1825:200,1B35:10,1BC5:10,1C85:A0
pause
