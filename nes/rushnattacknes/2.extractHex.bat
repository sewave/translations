@echo off
set T_FILENAME="TR_Rush'n Attack (USA).nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 86A:10,2332:10,2432:10,C43F:10,C1CA:10,1D23:30
pause
