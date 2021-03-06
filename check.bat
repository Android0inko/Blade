@echo off

node -v >nul 2>&1

if %errorlevel% == 0 goto exists

echo Node.jsがインストールされていません。
echo 以下からNode.jsをダウンロードし、インストールしてください。
echo https://nodejs.org/ja/
echo.
pause
exit

:exists

for /f "usebackq delims=" %%a in (`node -v`) do set NODE=%%a

set "VER=%NODE:.=%"
set "VER=%VER:v=%"

if %VER% geq 800 goto run

echo このボットの推奨バージョンはv8.0.0以降ですが、
echo インストールされているnodeのバージョンは%NODE%です
echo 続行すると不具合が発生する可能性があります。

choice /m "続行しますか"

if "%errorlevel%"=="1" (goto run)

exit

:run
