
TEMPLATE = app
CONFIG += c++17
CONFIG += console

QT += core
QT += gui

### SSTD_LIBRARY_OUTPUT_PATH
include($$PWD/../sstd_library/sstd_build_path.pri)

DESTDIR = $${SSTD_LIBRARY_OUTPUT_PATH}
DEFINES *= THE_SOURCE_DIR=\\\"$${PWD}\\\"

isEmpty(QMAKE_POST_LINK){
    QMAKE_POST_LINK += $${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}else{
    QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}

QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${DESTDIR}/sstd_copy_qml $${PWD}/ffmpeg_windows/bin $${DESTDIR} debug
export(QMAKE_POST_LINK)

SOURCES += $$PWD/main.cpp

