@echo off
set T_FILENAME="TR_Super Turrican (Europe).nes"
set SCRIPTNAME="superturricannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21230:10,213C0:10,214C0:10,21580:10,217C0:50,216E0:E0
pause
