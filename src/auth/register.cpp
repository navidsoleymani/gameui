#include "register.hpp"

Register::Register(QObject* parent) : QObject(parent)
{

}

void Register::do_register(const QString& username, const QString& password, const QString& ref_code)
{
    Q_UNUSED(username)
    Q_UNUSED(password)
    Q_UNUSED(ref_code)
    switch (rand() % 5) {
        case 0:
            emit register_result(true, "حساب کاربری ایجاد شد. از نام کاربری و رمز عبور برای ورود استفاده کنید.");
            break;
        case 1:
            emit register_result(false, "نام کاربری تکراری است.");
            break;
        case 2:
            emit register_result(false, "کد معرف اشتباه است.");
            break;
        case 3:
            emit register_result(false, "رمز عبور ضعیف است.");
            break;
        default:
            emit register_result(false, "خطا در دسترسی به شبکه.");
            break;
    }
}
