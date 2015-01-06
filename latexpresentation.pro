TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    latexrunner/latexrunner.cpp

HEADERS += \
    latexrunner/latexrunner.h

RESOURCES += \
    images.qrc \
    latex.qrc \
    qml.qrc \
    presentation.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
