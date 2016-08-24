#ifndef CONNECT_CHARGE_H
#define CONNECT_CHARGE_H

#include <QWidget>
#include <QTimer>
#include <unistd.h>
#include "mythread.h"
#include <QLabel>
#include <QLineEdit>
#include "global.h"
#include "mysigals_slots.h"
#include <QMessageBox>

namespace Ui {
class connect_charge;
}

class connect_charge : public QWidget
{
    Q_OBJECT

public:
    explicit connect_charge(QWidget *parent = 0);
    ~connect_charge();
    QTimer tcv_timer;	//
    QTimer nextscreen_timer;	//
    mythread mythread_can ;
    int flag;
    void check_ver(QLineEdit* lbl);
    void newTimeNoSec(QLabel* lbl);

    mysigals_slots my_sigals;

private:
    Ui::connect_charge *ui;

public slots:
    void slot_hide();
    void slot_timer();//定时器
        void slot_nextscreen_timer();//定时器
};

#endif // CONNECT_CHARGE_H
