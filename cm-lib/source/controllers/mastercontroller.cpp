#include "mastercontroller.h"
#include "commandcontroller.h"
namespace cm{
namespace controllers{


class MasterController::Implementation
{
public:
    Implementation(MasterController* _masterController)
        :masterController(_masterController)
    {
        navigationController = new NavigationController(masterController);
    }
    MasterController* masterController{nullptr};
    NavigationController* navigationController{nullptr};
    QString welcomeMessage = "This is..";
};

MasterController::MasterController(QObject* parent)
    : QObject(parent)
{
    implementation.reset(new Implementation(this));
}

MasterController::~MasterController()
{

}

NavigationController*
MasterController::navigationController()
{
    return implementation->navigationController;
}

const QString& MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}

Q_PROPERTY(cm::controllers:.:CommandController* ui_commandController READ commandController CONSTANT)
CommandController* commandController();

CommandController * commandController();

}}
