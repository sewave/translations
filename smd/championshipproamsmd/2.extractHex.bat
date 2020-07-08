@echo off
set T_FILENAME="TR_Championship Pro-Am (USA).md"
set SCRIPTNAME="championshipproamsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1922C:100,1998C:100,1B3AC:200,1B88C:40,1A44C:100,276AC:100,3296C:A0
pause
