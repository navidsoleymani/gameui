#include "uimanager.hpp"

UIManager::UIManager(QObject* parent) : QObject(parent)
{

}

void UIManager::backPressed()
{
    emit goBack();
}
