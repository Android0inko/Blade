@echo off

node -v >nul 2>&1

if %errorlevel% == 0 goto exists

echo Node.js���C���X�g�[������Ă��܂���B
echo �ȉ�����Node.js���_�E�����[�h���A�C���X�g�[�����Ă��������B
echo https://nodejs.org/ja/
echo.
pause
exit

:exists

for /f "usebackq delims=" %%a in (`node -v`) do set NODE=%%a

set "VER=%NODE:.=%"
set "VER=%VER:v=%"

if %VER% geq 800 goto run

echo ���̃{�b�g�̐����o�[�W������v8.0.0�ȍ~�ł����A
echo �C���X�g�[������Ă���node�̃o�[�W������%NODE%�ł�
echo ���s����ƕs�����������\��������܂��B

choice /m "���s���܂���"

if /i "%errorlevel%"=="y" (goto run)

exit

:run
