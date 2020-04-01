@echo off
set T_FILENAME="TR_Hunt for Red October, The (U) (REV1) [!].nes"
set SCRIPTNAME="huntforredoctoberthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32490:90,35910:100,33620:30,343D0:20,34410:10,34570:20,34660:110,34490:10,255D0:10
pause
