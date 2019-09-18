#include <QtTest>

// add necessary includes here

class cmtests : public QObject
{
    Q_OBJECT

public:
    cmtests();
    ~cmtests();

private slots:
    void test_case1();

};

cmtests::cmtests()
{

}

cmtests::~cmtests()
{

}

void cmtests::test_case1()
{

}

QTEST_APPLESS_MAIN(cmtests)

#include "tst_cmtests.moc"
