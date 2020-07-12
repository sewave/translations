@echo off
set T_FILENAME="TR_Mr. Heli no Daibouken (Japan).pce"
set SCRIPTNAME="mrhelinodaiboukenpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
