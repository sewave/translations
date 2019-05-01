@echo off
set T_FILENAME="TR_Heavy Unit (J) [!].bin"
set SCRIPTNAME="heavyunitsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 58FE0:A0
pause
