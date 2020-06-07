#pragma once

#include <QObject>
#include <QQmlEngine>

class Version : public QObject {
    Q_OBJECT
public:
    Version() = default;
    Version(const Version&) = delete;
    void operator=(const Version&) = delete;

    static QObject *instance(QQmlEngine *engine, QJSEngine *scriptEngine);

    QString version() const;
    QString buildTime() const;

private:
    Q_PROPERTY(QString version READ version)
    Q_PROPERTY(QString buildTime READ buildTime)
};
