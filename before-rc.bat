@echo off
Pushd "%~dp0"

IF [%1] == [] (
    ECHO version number not specified!
    Exit /b
)


move .git ..\

copy config-RC.txt config.txt

php setSinglePlayer.php on
php setVersion.php %1

"C:\Program Files (x86)\Steam\steamapps\common\Homeworld\GBXTools\WorkshopTool\WorkshopTool.exe"
