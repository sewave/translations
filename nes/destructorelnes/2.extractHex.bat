@echo off
set T_FILENAME="TR_Destructor, El (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="destructorelnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FB0:10,EF10:40,E200:20,9140:70,B140:70,D140:70,F140:70,9FD0:10,BFD0:10,DFD0:10,FFD0:10
pause
