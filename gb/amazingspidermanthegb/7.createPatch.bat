@echo off
set T_FILENAME="TR_Amazing Spider-Man, The (UE) [!].gb"
set S_FILENAME="Amazing Spider-Man, The (UE) [!].gb"
set SCRIPTNAME="amazingspidermanthegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
