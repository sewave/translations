@echo off
set T_FILENAME="TR_Syd of Valis (USA).md"
set SCRIPTNAME="sydofvalissmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39CD6:18,396BE:80,39A3E:88,39B3E:50
pause
