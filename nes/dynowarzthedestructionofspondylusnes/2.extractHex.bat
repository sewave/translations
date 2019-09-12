@echo off
set T_FILENAME="TR_Dynowarz - The Destruction of Spondylus (U) [!].nes"
set SCRIPTNAME="dynowarzthedestructionofspondylusnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39EF0:10,302B0:60,312B0:60,322B0:60,332B0:60,342B0:60,352B0:60,362B0:60,372B0:60,382B0:60,3F1C0:10,3EDA0:10,3CFB0:20
pause
