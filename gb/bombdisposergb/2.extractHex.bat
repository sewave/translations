@echo off
set T_FILENAME="TR_Bomb Disposer (Sachen 4-in-1 Vol. 6) (Unl) [!].gb"
set SCRIPTNAME="bombdisposergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4C54:40,43E4:10,5F34:10,5F94:20
pause
