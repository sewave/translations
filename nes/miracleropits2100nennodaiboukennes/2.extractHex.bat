@echo off
set T_FILENAME="TR_Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set SCRIPTNAME="miracleropits2100nennodaiboukennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B0:10,240:20,40B0:20
pause
