@echo off
set T_FILENAME="TR_Houma ga Toki (J).nes"
set SCRIPTNAME="houmagatokines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F10:100,3F10:100,5F10:100,7F10:100,9F10:100,BF10:100,16810:100,17810:30
pause
