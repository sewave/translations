@echo off
set T_FILENAME="Mr. Heli no Daibouken (Japan).pce"
set SCRIPTNAME="mrhelinodaiboukenpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
