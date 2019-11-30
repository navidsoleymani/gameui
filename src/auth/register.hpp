#ifndef REGISTER_HPP
#define REGISTER_HPP

#include <QObject>

class Register : public QObject {
        Q_OBJECT
    public:
        explicit Register(QObject* parent = nullptr);

    signals:
        void register_result(bool status, QString message);

    public slots:
        void do_register(const QString& username,
                         const QString& password,
                         const QString& ref_code);
};

#endif // REGISTER_HPP
