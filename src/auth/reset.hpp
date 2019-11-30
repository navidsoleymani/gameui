#ifndef RESET_HPP
#define RESET_HPP

#include <QObject>

class Reset : public QObject {
        Q_OBJECT
    public:
        explicit Reset(QObject* parent = nullptr);

    signals:
        void reset_result(bool status, QString message);
    public slots:
        void do_reset(const QString& username);
};

#endif // RESET_HPP
