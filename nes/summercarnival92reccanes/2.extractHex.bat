@echo off
set T_FILENAME="TR_Summer Carnival '92 - Recca (Japan).nes"
set SCRIPTNAME="summercarnival92reccanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 34710:30,20810:200,20FF0:20,20310:100,20B30:40,20BD0:20,209D0:40,20450:60,20550:60,20650:60,20750:60,29410:400
pause
