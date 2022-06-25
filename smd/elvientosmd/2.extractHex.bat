@echo off
set T_FILENAME="TR_El. Viento (USA).md"
set SCRIPTNAME="elvientosmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FEFFE:200
pause
