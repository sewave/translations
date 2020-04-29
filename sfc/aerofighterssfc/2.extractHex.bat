@echo off
set T_FILENAME="TR_Aero Fighters (U).smc"
set SCRIPTNAME="aerofighterssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CFD7A:30,10B52D:B0,10B72D:B0,DA36D:80
pause
