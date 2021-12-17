@echo off
set T_FILENAME="TR_Ballblazer (Japan).nes"
set SCRIPTNAME="ballblazernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A926:10,11D30:20,11D70:20,11DE0:10,12890:10
pause
