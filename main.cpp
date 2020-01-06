#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "src/auth/login.hpp"
#include "src/auth/register.hpp"
#include "src/auth/reset.hpp"
#include "src/ui/uimanager.hpp"
#ifdef GU_ANDROID_BUILD
#include "src/androidhelpers.hpp"
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
    // create Custome C++ classes
    Login loginObj;
    Register registerObj;
    Reset resetObj;
    UIManager uiMgr;
    QQmlApplicationEngine engine;
    auto root = engine.rootContext();
    root->setContextProperty("LoginManager", &loginObj);
    root->setContextProperty("RegisterManager", &registerObj);
    root->setContextProperty("ResetManager", &resetObj);
    root->setContextProperty("UIManager", &uiMgr);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
