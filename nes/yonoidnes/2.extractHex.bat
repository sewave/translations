@echo off
set T_FILENAME="TR_Yo! Noid (USA).nes"
set SCRIPTNAME="yonoidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 290B0:20,2CD60:30,2A3E0:40,2A4C0:10,2A580:20,2A600:20,295B0:20,2A790:10
pause
