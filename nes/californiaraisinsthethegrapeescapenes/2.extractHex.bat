@echo off
set T_FILENAME="TR_California Raisins, The - The Grape Escape (U) (Prototype).nes"
set SCRIPTNAME="californiaraisinsthethegrapeescapenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 177CD:520
pause
