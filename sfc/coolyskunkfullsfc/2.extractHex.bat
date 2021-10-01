@echo off
set T_FILENAME="TR_coolyskunk_full [T+ENG].sfc"
set SCRIPTNAME="coolyskunkfullsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38984:80,38F84:100,37A14:10,37B84:10,3E494:30
pause
