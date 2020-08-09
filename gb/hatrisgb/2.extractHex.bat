@echo off
set T_FILENAME="TR_Hatris (Japan, USA).gb"
set SCRIPTNAME="hatrisgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A865:60,A221:50,86F3:100,86A9:40,882A:10,A1D1:40,A298:40,A66B:50
pause
