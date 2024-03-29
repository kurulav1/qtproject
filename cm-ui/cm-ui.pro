
QT += qml quick
include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)
TEMPLATE = app

CONFIG += c++14

INCLUDEPATH += source \
    ../cm-lib/source

SOURCES += source/main.cpp

RESOURCES += views.qrc \
    assets.qrc \
    components.qrc

QML_IMPORT_PATH = $$PWD






LIBS += -L$$PWD/../binaries/$$DESTINATION_PATH -lcm-lib
DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
