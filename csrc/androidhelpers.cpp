#include "csrc/androidhelpers.hpp"

void change_screen_landscape()
{
    QAndroidJniObject activity = QtAndroid::androidActivity();
    qDebug() << "Morteza: " << activity.toString();
    QAndroidJniObject::callStaticMethod<jint>
    ("ir/mortza/gameui/demo/GeneralBridge"
     , "changeScreenOrientation"
     , "(Lorg/qtproject/qt5/android/bindings/QtActivity;I)I"
     , activity.object(), 0);
}
