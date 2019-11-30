#include <QGuiApplication>
#include <QQmlApplicationEngine>
#ifdef GU_ANDROID_BUILD
#include "csrc/androidhelpers.hpp"
#endif

void init_jni()
{
#ifdef GU_ANDROID_BUILD
    //change_screen_landscape();
#endif
}

int main(int argc, char* argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    //init_jni();
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
