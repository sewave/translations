@echo off
set T_FILENAME="TR_Legend of Hero Tonma (USA).pce"
set SCRIPTNAME="legendofherotonmapce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
