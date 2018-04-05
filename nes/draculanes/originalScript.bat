set T_FILENAME="Bram Stoker's Dracula (U) [!].nes"
set SCRIPTNAME="draculanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 12459-12AA8-FF
pause