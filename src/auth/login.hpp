#ifndef LOGIN_HPP
#define LOGIN_HPP

#include <QObject>

class Login : public QObject {
        Q_OBJECT
    public:
        explicit Login(QObject* parent = nullptr);

    signals:
        void login_result(bool status, QString message);
    public slots:
        void do_login(const QString& username, const QString& password);
};

#endif // LOGIN_HPP
