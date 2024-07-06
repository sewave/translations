@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (World).md"
set SCRIPTNAME="shadowdancerthesecretofshinobismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
