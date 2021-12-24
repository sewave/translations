@echo off
set T_FILENAME="TR_DuckTales (USA).gb"
set SCRIPTNAME="ducktalesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A683:10,A6A1:10,A6E8:10,A772:10,A7E0:10,F61E:10
pause
