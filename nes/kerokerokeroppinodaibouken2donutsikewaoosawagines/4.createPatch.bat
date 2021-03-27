@echo off
set T_FILENAME="TR_Kero Kero Keroppi no Daibouken 2 - Donuts Ike wa Oosawagi! (Japan) [T+ENG].nes"
set S_FILENAME="Kero Kero Keroppi no Daibouken 2 - Donuts Ike wa Oosawagi! (Japan).nes"
set SCRIPTNAME="kerokerokeroppinodaibouken2donutsikewaoosawagines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
