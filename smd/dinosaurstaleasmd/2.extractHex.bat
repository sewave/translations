@echo off
set T_FILENAME="TR_Dinosaur's Tale, A (USA).md"
set SCRIPTNAME="dinosaurstaleasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4D304:140
pause
