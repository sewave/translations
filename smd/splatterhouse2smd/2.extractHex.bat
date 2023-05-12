@echo off
set T_FILENAME="TR_Splatterhouse 2 (USA).md"
set SCRIPTNAME="splatterhouse2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4C8A0:300,4CC20:1400,85960:80,85D80:60,BA000:A00,E1200:400,EA2A0:120,EA4C0:60,EA920:C0
pause
