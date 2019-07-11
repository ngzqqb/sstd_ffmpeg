
win32-g++{
    INCLUDEPATH += $$PWD/ffmpeg_windows/include
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavcodec.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavdevice.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavfilter.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavformat.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavutil.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lpostproc.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lswresample.dll
    LIBS += -L$$PWD/ffmpeg_windows/lib -lswscale.dll
}

win32-msvc{
    INCLUDEPATH += $$PWD/ffmpeg_windows/include
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavcodec
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavdevice
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavfilter
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavformat
    LIBS += -L$$PWD/ffmpeg_windows/lib -lavutil
    LIBS += -L$$PWD/ffmpeg_windows/lib -lpostproc
    LIBS += -L$$PWD/ffmpeg_windows/lib -lswresample
    LIBS += -L$$PWD/ffmpeg_windows/lib -lswscale
}

linux-g++{
# sudo apt-get install
# sudo apt-get install
}


