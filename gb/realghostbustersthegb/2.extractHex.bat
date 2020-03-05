@echo off
set T_FILENAME="TR_Real Ghostbusters, The (U) [!].gb"
set SCRIPTNAME="realghostbustersthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A824:50,A904:20,AC04:50,C98E:10,CB0E:20,DA10:20,DB10:60,10832:10
pause
