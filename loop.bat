@echo off
title BladeBOT

call check.bat

:run

echo ==============�{�b�g���N�����܂�==============

node run.js

echo �{�b�g���I�����܂����B
echo �T�b��Ɏ����ő������܂�
choice /t 5 /d y /m "���[�v�𑱂��܂����H"

if /i "%errorlevel%"=="1" goto run

exit
