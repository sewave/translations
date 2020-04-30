@echo off
set T_FILENAME="TR_Flipull - An Exciting Cube Game (J).nes"
set SCRIPTNAME="flipullanexcitingcubegamenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 93F0:10,95C0:50,AF90:20,B3F0:10,B5C0:50,D3F0:10,D5C0:50,EF90:20,F3F0:10,F5C0:50,BC10:100,FC10:100
pause
