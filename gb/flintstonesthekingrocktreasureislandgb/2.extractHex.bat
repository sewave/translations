@echo off
set T_FILENAME="TR_Flintstones, The - King Rock Treasure Island (U).gb"
set SCRIPTNAME="flintstonesthekingrocktreasureislandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E8DA:10,1E942:40
pause
