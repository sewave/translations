@echo off
set T_FILENAME="TR_Adventures of Dino Riki, The (U) [!].nes"
set S_FILENAME="Adventures of Dino Riki, The (U) [!].nes"
set SCRIPTNAME="adventuresofdinorikithenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
