TEMPLATE = subdirs

SUBDIRS += \
    cm-lib \
    cm-ui

message(/Users/vainokurula/cm/qtproject: $${PWD})





DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR =$$PWD/build/$$DESTINATION_PATH/.ui
