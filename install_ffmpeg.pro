
TEMPLATE = app
CONFIG += c++17
CONFIG += console

QT += core
QT += gui

### SSTD_LIBRARY_OUTPUT_PATH
include($$PWD/../sstd_library/sstd_build_path.pri)

DESTDIR = $${SSTD_LIBRARY_OUTPUT_PATH}
DEFINES *= THE_SOURCE_DIR=\\\"$${PWD}\\\"

SOURCES += $$PWD/main.cpp








