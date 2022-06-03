@echo off
set T_FILENAME="TR_Great Circus Mystery Starring Mickey & Minnie, The (USA).md"
set SCRIPTNAME="greatcircusmysterysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 120B00:400
pause
