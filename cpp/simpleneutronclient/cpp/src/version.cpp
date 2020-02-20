#include <version.h>


QObject *Version::instance(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)
    static Version *instance = new Version();
    return instance;
}

QString Version::version() const
{
    return "v1.0.0";
}

QString Version::buildTime() const
{
    return QString(__DATE__) + " " + QString(__TIME__);
}
