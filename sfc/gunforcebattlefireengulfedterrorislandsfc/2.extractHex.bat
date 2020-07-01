@echo off
set T_FILENAME="TR_Gunforce - Battle Fire Engulfed Terror Island (U).smc"
set SCRIPTNAME="gunforcebattlefireengulfedterrorislandsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 76450:10,76BC0:180,762B0:10,763A0:10
pause
