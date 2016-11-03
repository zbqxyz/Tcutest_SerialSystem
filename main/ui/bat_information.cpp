#include "bat_information.h"
#include "ui_bat_information.h"
#include "charging_monitoring.h"
#include "equipment_information.h"
#include "billing_info.h"
#include "tcu.h"

bat_information::bat_information(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::bat_information)
{
    ui->setupUi(this);
    setWindowFlags(Qt::FramelessWindowHint);//窗口没有没有边
    setAttribute(Qt::WA_DeleteOnClose); //关闭时自动的释放内存

    connect(ui->change_moni_but,SIGNAL(clicked()),this,SLOT(change_moni()));//
    connect(ui->change_equ_but,SIGNAL(clicked()),this,SLOT(change_equinf()));//
    connect(ui->change_billinf_but,SIGNAL(clicked()),this,SLOT(change_billinf()));//

    connect(&bat_timer,SIGNAL(timeout()),this,SLOT(slot_timer()));//参数
    bat_timer.start(100);

    connect(&tstatus_timer,SIGNAL(timeout()),this,SLOT(slot_statustimer()));//充电状态
    tstatus_timer.start(100);
}

void bat_information::change_moni()
{
    Charging_monitoring *w_change_moni = new Charging_monitoring;
    w_change_moni->show();
}

void bat_information::change_equinf()
{
    Equipment_information *w_equipment_information = new Equipment_information;
    w_equipment_information->show();
}

void bat_information::change_billinf()
{
    Billing_info *w_billing_information = new Billing_info;
    w_billing_information->show();
}

void bat_information::slot_timer()
{
    //获取信息
}

void bat_information::slot_statustimer()
{
    if(task->tcu_err_stage == (TCU_ERR_STAGE_TIMEOUT | TCU_ERR_STAGE_START))
    {
        myerr_sigals.SetValue(task->tcu_err_stage);
        //ui->label_inf->setText("启动充电超时");
        //QMessageBox::critical(NULL, "Error", "启动充电超时");
        //tstatus_timer.stop();//注释掉可重试进行下一步，否则定时器停止，无法跳转界面到
    }
    if(task->tcu_err_stage == (TCU_ERR_STAGE_TIMEOUT | TCU_ERR_STAGE_STOP))
    {
        myerr_sigals.SetValue(task->tcu_err_stage);
        //ui->label_inf->setText("停止充电超时");
        //QMessageBox::critical(NULL, "Error", "停止充电超时");
        //tstatus_timer.stop();
    }

    if(task->tcu_stage == TCU_STAGE_START)
    {
        //ui->label_inf->setText("启动充电");
    }

    if(task->tcu_stage == TCU_STAGE_STARTING)
    {
        //ui->label_inf->setText("启动充电...");
        my_sigals.SetValue(TCU_STAGE_STARTING);
    }

    if(task->tcu_stage == TCU_STAGE_STATUS)
    {
        //ui->label_inf->setText("启动充电完成");
        my_sigals.SetValue(TCU_STAGE_STATUS);
    }

    if(task->tcu_stage == TCU_STAGE_CHARGING)
    {
        //ui->label_inf->setText("充电中...");
    }

    if(task->tcu_stage == TCU_STAGE_STOP || task->tcu_err_stage == TCU_ERR_STAGE_STOP)
    {
            //QMessageBox::about(NULL, "Stop", "停止充电");
            //ui->label_inf->setText("停止充电");
            my_sigals.SetValue(TCU_STAGE_STOP);
            tstatus_timer.stop();
    }

    if(task->tcu_stage == TCU_STAGE_STOP_END )
    {
            //QMessageBox::about(NULL, "Stop", "停止充电");
            //ui->label_inf->setText("停止充电");
            my_sigals.SetValue(TCU_STAGE_STOP_END);
            tstatus_timer.stop();
    }

    if(task->tcu_err_stage == TCU_ERR_STAGE_START)
    {
        myerr_sigals.SetValue(TCU_ERR_STAGE_START);
        //ui->label_inf->setText("启动充电失败");
        //QMessageBox::critical(NULL, "Error", "启动充电失败");
        tstatus_timer.stop();
    }

    if(task->tcu_err_stage == TCU_ERR_STAGE_STARTING)
    {
        myerr_sigals.SetValue(TCU_ERR_STAGE_STARTING);
        //ui->label_inf->setText("启动充电失败");
        //QMessageBox::critical(NULL, "Error", "启动充电失败");
        tstatus_timer.stop();
    }

    if(task->tcu_err_stage == TCU_ERR_STAGE_STOP_STATUS)
    {
        myerr_sigals.SetValue(TCU_ERR_STAGE_STOP_STATUS);
        //ui->label_inf->setText("停止充电失败");
        //QMessageBox::critical(NULL, "Error", "停止充电失败");
        tstatus_timer.stop();
    }

}


bat_information::~bat_information()
{
    delete ui;
}
