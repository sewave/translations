@echo off
set T_FILENAME="TR_Urban Strike (USA, Europe).md"
set SCRIPTNAME="urbanstrikesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
StrikeLZSS.exe %T_FILENAME% "font_1CA8F4.gfx" -d -p 1878260
echo.
REM Uncompressed size:       2016 | 0x000007E0
REM Compressed size  :        596 | 0x00000254
pause
