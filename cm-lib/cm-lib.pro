#-------------------------------------------------
#
# Project created by QtCreator 2019-08-16T19:11:40
#
#-------------------------------------------------

QT -= gui

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)
TARGET = cm-lib
TEMPLATE = lib

CONFIG += c++14

DEFINES += CMLIB_LIBRARY

INCLUDEPATH += source

SOURCES += source/models/client.cpp \
    source/controllers/commandcontroller.cpp \
    source/controllers/mastercontroller.cpp \
    source/framework/command.cpp


HEADERS += source/cm-lib_global.h \
    source/controllers/commandcontroller.h \
    source/controllers/mastercontroller.h \
    source/controllers/navigation-controller.h \
    source/framework/command.h \
    source/models/client.h

message(/Users/vainokurula/cm/qtproject: $${PWD})


DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
