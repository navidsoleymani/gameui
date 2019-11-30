#include "reset.hpp"

Reset::Reset(QObject* parent) : QObject(parent)
{

}

void Reset::do_reset(const QString& username)
{
    Q_UNUSED(username)
    if (rand() % 5 == 0) {
        emit reset_result(true, "رمز عبور جدید به ایمیل شما ارسال شد.");
    }
    else {
        emit reset_result(false, "نام کاربری اشتباه است.");
    }
}
