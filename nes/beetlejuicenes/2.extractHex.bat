@echo off
set T_FILENAME="TR_Beetlejuice (USA).nes"
set SCRIPTNAME="beetlejuicenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7764:40,7AB9:30,AF57:80
pause
