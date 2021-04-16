@echo off
set T_FILENAME="TR_Irem Skins Game, The (USA).sfc"
set SCRIPTNAME="iremskinsgamethesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 79C00:100,7A370:400,74080:200
pause
