@echo off
set T_FILENAME="TR_Adventures of Captain Comic, The (Color Dreams) [!].nes"
set S_FILENAME="Adventures of Captain Comic, The (Color Dreams) [!].nes"
set SCRIPTNAME="adventuresofcaptaincomicthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
