@echo off
title BladeBOT

call check.bat

:run

echo ==============�{�b�g���N�����܂�==============

node run.js

echo �{�b�g�̍ċN�����J�n���܂��B
echo �����I�����Ȃ������ꍇ�͂T�b��Ɏ����ōċN������܂�
choice /t 5 /d y /m "�ċN�����Ă�낵���ł����H"

if /i "%errorlevel%"=="1" goto run

exit
