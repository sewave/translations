@echo off
set T_FILENAME="TR_Championship Rally (Europe).nes"
set SCRIPTNAME="championshiprallynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24590:40,32590:40,3A590:40,28E10:100,29E10:100,2AE10:100,2BE10:100,2CE10:100,2DE10:100,2EE10:100,2FE10:100,30EF0:20
pause
