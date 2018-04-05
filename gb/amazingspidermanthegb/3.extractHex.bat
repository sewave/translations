@echo off
set T_FILENAME="TR_Amazing Spider-Man, The (UE) [!].gb"
set SCRIPTNAME="amazingspidermanthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FD77:08
pause
