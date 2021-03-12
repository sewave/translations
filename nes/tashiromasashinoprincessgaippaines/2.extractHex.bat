@echo off
set T_FILENAME="TR_Tashiro Masashi no Princess ga Ippai (Japan) [T+ENG].nes"
set SCRIPTNAME="tashiromasashinoprincessgaippaines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20460:B0,23460:B0,38460:B0,39460:B0,3B460:B0,21810:10,23550:20,37C10:100,39D60:40
pause
