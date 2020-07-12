@echo off
set T_FILENAME="TR_Thunder & Lightning (USA).nes"
set SCRIPTNAME="thunderlightningnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20890:210,22890:210,24890:210,26890:210,276E0:10,27220:40,25220:40,23220:40,21220:40
pause
