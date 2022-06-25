@echo off
set T_FILENAME="TR_El. Viento (USA) [MIJET].md"
set SCRIPTNAME="elvientomijetsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FE202:200,FEFFE:200
pause
