#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QDir>
#include "latexrunner/latexrunner.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<LatexRunner>("LatexPresentation", 1, 0, "LatexRunner");
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
