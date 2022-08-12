@echo off
set T_FILENAME="TR_MUSHA - Metallic Uniframe Super Hybrid Armor (USA).md"
set SCRIPTNAME="mushametallicuniframesuperhybridarmorsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36910:50,36B10:50
pause
