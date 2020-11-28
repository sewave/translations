@echo off
set T_FILENAME="TR_Peepar Time (Japan).nes"
set SCRIPTNAME="peepartimenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B10:40,8C10:40,8D70:20,8E70:20,9310:20,9410:20,9530:20,9630:20,9850:20,9950:20,9B10:80
pause
