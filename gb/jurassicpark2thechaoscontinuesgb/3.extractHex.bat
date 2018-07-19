@echo off
set T_FILENAME="TR_Jurassic Park 2 - The Chaos Continues (UE) (M4) [!].gb"
set SCRIPTNAME="jurassicpark2thechaoscontinuesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E549:500
pause
