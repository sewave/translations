@echo off
set T_FILENAME="TR_Stop That Roach! (USA).gb"
set SCRIPTNAME="stopthatroachgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9EB0:40,B7C0:200,BBB0:10,BA70:A0,1C000:10,8480:10,84A0:20,8510:10,8570:20,82F0:10,87F0:10,15CC0:340
pause
