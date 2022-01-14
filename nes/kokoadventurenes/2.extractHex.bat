@echo off
set T_FILENAME="TR_Koko Adventure (Korea) (Unl).nes"
set SCRIPTNAME="kokoadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2CAA0:80,38090:180,38350:40,2C610:100,2C710:100,300D0:20,302F0:20,340D0:20,342F0:20,3A010:200,3A570:200
pause
