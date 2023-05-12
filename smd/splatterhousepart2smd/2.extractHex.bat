@echo off
set T_FILENAME="TR_Splatterhouse Part 2 (Japan).md"
set SCRIPTNAME="splatterhousepart2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BA000:A00,E1200:400,EA2A0:120,EA4C0:60,EA920:C0,85960:80,85DE0:20
pause
