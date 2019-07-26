@echo off
set T_FILENAME="TR_Magic Sword (U).smc"
set SCRIPTNAME="magicswordsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FF610:10,FF670:300,FEF20:C0
pause
