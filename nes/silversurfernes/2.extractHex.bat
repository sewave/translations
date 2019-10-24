@echo off
set T_FILENAME="TR_Silver Surfer (U) [!].nes"
set SCRIPTNAME="silversurfernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 234C0:70,20B10:100,39220:40,32220:40,30200:60,252F0:10,272F0:10,2B2F0:10,30410:30
pause
