@echo off
set T_FILENAME="TR_Marvel Land (U) [!].bin"
set SCRIPTNAME="marvellandsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 19132-191B2,19992-19A52,8C622-8C762,976-9F6,11D6-1296,3FFA4:140
pause
