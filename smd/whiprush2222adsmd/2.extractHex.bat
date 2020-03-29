@echo off
set T_FILENAME="TR_Whip Rush 2222 AD (U) [!].bin"
set SCRIPTNAME="whiprush2222adsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E400:200,40060:100,70000:100,71F00:100,74400:200
pause
