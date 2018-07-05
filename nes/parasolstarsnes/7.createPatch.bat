@echo off
set T_FILENAME="TR_Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set S_FILENAME="Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set SCRIPTNAME="parasolstarsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
