@echo off
set T_FILENAME="TR_Dottie dreads nought (J) (V1.1).sfc"
set SCRIPTNAME="dottiedreadsnoughtsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D07E:200,77F41:60,780C1:70,781A1:C0,78281:30,78351:C0,78431:30,78761:10,787F1:10
pause
