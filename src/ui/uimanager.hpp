#ifndef UIMANAGER_HPP
#define UIMANAGER_HPP

#include <QObject>

class UIManager : public QObject {
        Q_OBJECT
    public:
        explicit UIManager(QObject* parent = nullptr);

    signals:
        void goBack();

    public slots:
        void backPressed();
};

#endif // UIMANAGER_HPP
