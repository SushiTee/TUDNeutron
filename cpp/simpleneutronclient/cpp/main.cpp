#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <external/networking/kissnet.hpp>
#include <messagetype.h>
#include <networkcontroller.h>
#include <version.h>

namespace kn = kissnet;

void myMessageOutput(QtMsgType type, const QMessageLogContext &context, const QString &msg)
{
    QByteArray localMsg = msg.toLocal8Bit();
    QString file = context.file ? context.file : "";
    if (file.startsWith("..")) {
        file = "file://" + file;
    }
    QString function = context.function ? context.function : "";
    auto braceIndex = function.indexOf("(");
    if (braceIndex != -1) {
        function = function.left(braceIndex+1) + "..)";
    }
    auto doubleDotIndex = function.lastIndexOf("::");
    if (braceIndex != -1) {
        function = function.right(function.length()-doubleDotIndex-2);
    }
    auto spaceIndex = function.lastIndexOf(" ");
    if (spaceIndex != -1) {
        function = function.right(function.length()-spaceIndex-1);
    }
    switch (type) {
    case QtDebugMsg:
        fprintf(stderr, "\u001b[37mD:(%s:%u - %s) %s\u001b[0m\n", file.toLocal8Bit().constData(), context.line, function.toLocal8Bit().constData(), localMsg.constData());
        break;
    case QtInfoMsg:
        fprintf(stderr, "\u001b[32mI:(%s:%u - %s) %s\u001b[0m\n", file.toLocal8Bit().constData(), context.line, function.toLocal8Bit().constData(), localMsg.constData());
        break;
    case QtWarningMsg:
        fprintf(stderr, "\u001b[33mW:(%s:%u - %s) %s\u001b[0m\n", file.toLocal8Bit().constData(), context.line, function.toLocal8Bit().constData(), localMsg.constData());
        break;
    case QtCriticalMsg:
        fprintf(stderr, "\u001b[35mC:(%s:%u - %s) %s\u001b[0m\n", file.toLocal8Bit().constData(), context.line, function.toLocal8Bit().constData(), localMsg.constData());
        break;
    case QtFatalMsg:
        fprintf(stderr, "\u001b[36mF:(%s:%u - %s) %s\u001b[0m\n", file.toLocal8Bit().constData(), context.line, function.toLocal8Bit().constData(), localMsg.constData());
        break;
    }
    fflush(stderr);
}

int main(int argc, char *argv[])
{
    qInstallMessageHandler(myMessageOutput);
    QGuiApplication app(argc, argv);

    // this has to be set to prevent a warning when using the FileDialog
    app.setOrganizationName("Sascha Weichel");
    app.setOrganizationDomain("sw");

    QQmlApplicationEngine engine;
    MessageType::declareQML();
    qmlRegisterSingletonType<NetworkController>("SimpleNeutron.Network", 1, 0, "NetworkController", &NetworkController::instance);
    qmlRegisterSingletonType<Version>("SimpleNeutron.Version", 1, 0, "Version", &Version::instance);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.addImportPath("qrc:/");
    engine.load(url);

    return app.exec();
}
