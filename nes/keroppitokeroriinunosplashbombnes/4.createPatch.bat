@echo off
set T_FILENAME="TR_Keroppi to Keroriinu no Splash Bomb! (Japan) [T+ENG].nes"
set S_FILENAME="Keroppi to Keroriinu no Splash Bomb! (Japan).nes"
set SCRIPTNAME="keroppitokeroriinunosplashbombnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
