@echo off
set T_FILENAME="TR_Taiyou no Yuusha - Fighbird (Japan) [T+ENG].nes"
set SCRIPTNAME="taiyounoyuushafighbirdnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2C140:10,2E9D0:10,2FD00:10,2FE00:10,2FFB0:50,37DD0:40,37ED0:40,37FD0:40,2DE10:180,2C210:200,2C4C0:10,32950:40,32A50:40,218E0:30,21A00:10,3ECB0:60,3EDB0:60,3EEB0:60,
pause
