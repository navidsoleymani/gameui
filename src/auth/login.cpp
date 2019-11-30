#include "login.hpp"

Login::Login(QObject* parent) : QObject(parent)
{

}

void Login::do_login(const QString& username, const QString& password)
{
    Q_UNUSED(username)
    Q_UNUSED(password)
    if (rand() % 3 == 0) {
        emit login_result(true, "");
    }
    else {
        emit login_result(false, "رمز عبور اشتباه است.");
    }
}
