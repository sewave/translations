@echo off
set T_FILENAME="TR_Flintstones, The (USA).md"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FD00:200,2D7E0:20
pause
