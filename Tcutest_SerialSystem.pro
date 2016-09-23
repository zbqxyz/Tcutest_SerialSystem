######################################################################
# Automatically generated by qmake (2.01a) ?? 9? 2 17:25:50 2016
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += . \
              define \
              main \
              qcom \
              startUp \
              tcu_canbus \
              main/ui \
              my_debug/comserv \
              my_debug/js \
              my_debug/platabs \
              my_debug/tdevice \
              qcom/cpu_card \
              qcom/dlt645_2007 \
              qcom/qextserial
INCLUDEPATH += . \
               tcu_canbus \
               main/ui \
               main \
               startUp \
               qcom \
               qcom/qextserial \
               qcom/cpu_card \
               qcom/dlt645_2007 \
               my_debug/comserv \
               my_debug/js \
               my_debug/platabs \
               my_debug/tdevice

# Input
HEADERS += global.h \
           myerr_sigals_slots.h \
           mysigals_slots.h \
           mythread.h \
           define/define.h \
           main/main.h \
           main/secondwindow.h \
           main/test_auto.h \
           main/test_manual.h \
           qcom/Card_window.h \
           qcom/Emter_window.h \
           startUp/myevent.h \
           startUp/startUpFrm.h \
           tcu_canbus/error.h \
           tcu_canbus/Hachiko.h \
           tcu_canbus/log.h \
           tcu_canbus/serialsystem.h \
           tcu_canbus/tcu.h \
           main/ui/bat_information.h \
           main/ui/billing_info.h \
           main/ui/charging_end.h \
           main/ui/charging_monitoring.h \
           main/ui/connect_charge.h \
           main/ui/equipment_information.h \
           main/ui/equipment_testing.h \
           main/ui/settlement_inf.h \
           main/ui/suspend_service.h \
           main/ui/tcu_help.h \
           my_debug/comserv/comserv.h \
           my_debug/comserv/tdarray.h \
           my_debug/comserv/tdstr.h \
           my_debug/comserv/tdstring.h \
           my_debug/js/tdmalloc.h \
           my_debug/platabs/tcomdef.h \
           my_debug/tdevice/file.h \
           my_debug/tdevice/tdevice.h \
           qcom/cpu_card/card_api.h \
           qcom/dlt645_2007/dlt645_api_07.h \
           qcom/qextserial/qextserialport.h \
           qcom/qextserial/qextserialport_global.h \
           qcom/qextserial/qextserialport_p.h \           
    gprs/gprs.h \
    gps/gps.h \
    network/interface.h \
    network/qipaddressedit.h \
    network/qipaddressedititem.h \
    network/netwindow.h \
    keyboard/imframe.h \
    keyboard/inputwidget.h \
    SYSZUXpinyin/syszuxim.h \
    SYSZUXpinyin/syszuxpinyin.h \
    message/message.h \
    main/ui/first_interface.h \
    main/ui/card_query.h \
    main/ui/card_unlock.h \
    main/ui/charging_mode.h \
    main/ui/charge_card.h \
    main/ui/swipe_card.h \
    main/ui/qr_code.h \
    main/ui/phone_code.h \
    main/ui/account_code.h \
    qrencode-3.4.4/bitstream.h \
    qrencode-3.4.4/config.h \
    qrencode-3.4.4/mask.h \
    qrencode-3.4.4/mmask.h \
    qrencode-3.4.4/mqrspec.h \
    qrencode-3.4.4/qrencode_inner.h \
    qrencode-3.4.4/qrencode.h \
    qrencode-3.4.4/qrinput.h \
    qrencode-3.4.4/qrspec.h \
    qrencode-3.4.4/rscode.h \
    qrencode-3.4.4/split.h \
    main/ui/card_operation.h
FORMS += qcom/Card_window.ui \
         qcom/Emter_window.ui \
         startUp/startUpFrm.ui \
         main/ui/bat_information.ui \
         main/ui/billing_info.ui \
         main/ui/charging_end.ui \
         main/ui/charging_monitoring.ui \
         main/ui/connect_charge.ui \
         main/ui/equipment_information.ui \
         main/ui/equipment_testing.ui \
         main/ui/main.ui \
         main/ui/secondwindow.ui \
         main/ui/settlement_inf.ui \
         main/ui/suspend_service.ui \
         main/ui/tcu_help.ui \
         main/ui/test_auto.ui \
         main/ui/test_manual.ui \
    gprs/gprs.ui \
    gps/gps.ui \
    network/netwindow.ui \
    keyboard/ui/keyboard.ui \
    SYSZUXpinyin/syszuxpinyin.ui \
    message/message.ui \
    main/ui/first_interface.ui \
    main/ui/card_query.ui \
    main/ui/card_unlock.ui \
    main/ui/charging_mode.ui \
    main/ui/charge_card.ui \
    main/ui/swipe_card.ui \
    main/ui/qr_code.ui \
    main/ui/phone_code.ui \
    main/ui/account_code.ui \
    main/ui/card_operation.ui
SOURCES += global.cpp \
           myerr_sigals_slots.cpp \
           mysigals_slots.cpp \
           mythread.cpp \
           main/main.cpp \
           main/secondwindow.cpp \
           main/test_auto.cpp \
           main/test_manual.cpp \
           qcom/Card_window.cpp \
           qcom/Emter_window.cpp \
           startUp/startup.cpp \
           startUp/startUpFrm.cpp \
           tcu_canbus/Hachiko.c \
           tcu_canbus/log.c \
           tcu_canbus/serialsystem.c \
           tcu_canbus/tcu.c \
           main/ui/bat_information.cpp \
           main/ui/billing_info.cpp \
           main/ui/charging_end.cpp \
           main/ui/charging_monitoring.cpp \
           main/ui/connect_charge.cpp \
           main/ui/equipment_information.cpp \
           main/ui/equipment_testing.cpp \
           main/ui/settlement_inf.cpp \
           main/ui/suspend_service.cpp \
           main/ui/tcu_help.cpp \
           my_debug/comserv/tdarray.c \
           my_debug/comserv/tdstr.c \
           my_debug/comserv/tdstring.c \
           my_debug/js/tdmalloc.c \
           my_debug/tdevice/file.c \
           qcom/cpu_card/card_api.c \
           qcom/cpu_card/card_test.c \
           qcom/dlt645_2007/dlt645_api_07.c \
           qcom/dlt645_2007/dlt645_api_test.c \
           qcom/qextserial/qextserialport.cpp \
           qcom/qextserial/qextserialport_unix.cpp \
    gprs/gprs.cpp \
    gps/gps.cpp \
    network/interface.cpp \
    network/qipaddressedit.cpp \
    network/qipaddressedititem.cpp \
    network/netwindow.cpp \
    keyboard/imframe.cpp \
    keyboard/inputwidget.cpp \
    SYSZUXpinyin/syszuxim.cpp \
    SYSZUXpinyin/syszuxpinyin.cpp \
    message/message.cpp \     
    main/ui/first_interface.cpp \
    main/ui/card_query.cpp \
    main/ui/card_unlock.cpp \
    main/ui/charging_mode.cpp \
    main/ui/charge_card.cpp \
    main/ui/swipe_card.cpp \
    main/ui/qr_code.cpp \
    main/ui/phone_code.cpp \
    main/ui/account_code.cpp \
    qrencode-3.4.4/bitstream.c \
    qrencode-3.4.4/mask.c \
    qrencode-3.4.4/mmask.c \
    qrencode-3.4.4/mqrspec.c \
    qrencode-3.4.4/qrenc.c \
    qrencode-3.4.4/qrencode.c \
    qrencode-3.4.4/qrinput.c \
    qrencode-3.4.4/qrspec.c \
    qrencode-3.4.4/rscode.c \
    qrencode-3.4.4/split.c \
    main/ui/card_operation.cpp
RESOURCES += img.qrc qcom/images.qrc \
    syszuxpinyin.qrc

DEFINES += HAVE_CONFIG_H

OBJECTS_DIR =  ./obj
MOC_DIR = ./moc
UI_DIR = ./ui_forms

