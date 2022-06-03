@echo off
set T_FILENAME="TR_Lord of King, The (Japan) [T+ENG].nes"
set SCRIPTNAME="lordofkingthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20810:380,202B0:20,20460:30
pause
