/****************************************************************************
** Meta object code from reading C++ file 'empty_service_call_interface.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/empty_service_call_interface.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'empty_service_call_interface.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction_t {
    QByteArrayData data[5];
    char stringdata0[104];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction_t qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction = {
    {
QT_MOC_LITERAL(0, 0, 49), // "jsk_rviz_plugins::EmptyServic..."
QT_MOC_LITERAL(1, 50, 23), // "callRequestEmptyCommand"
QT_MOC_LITERAL(2, 74, 0), // ""
QT_MOC_LITERAL(3, 75, 9), // "button_id"
QT_MOC_LITERAL(4, 85, 18) // "parseROSParameters"

    },
    "jsk_rviz_plugins::EmptyServiceCallInterfaceAction\0"
    "callRequestEmptyCommand\0\0button_id\0"
    "parseROSParameters"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__EmptyServiceCallInterfaceAction[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x09 /* Protected */,
       4,    0,   27,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::EmptyServiceCallInterfaceAction::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        EmptyServiceCallInterfaceAction *_t = static_cast<EmptyServiceCallInterfaceAction *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->callRequestEmptyCommand((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->parseROSParameters(); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::EmptyServiceCallInterfaceAction::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction.data,
      qt_meta_data_jsk_rviz_plugins__EmptyServiceCallInterfaceAction,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::EmptyServiceCallInterfaceAction::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::EmptyServiceCallInterfaceAction::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__EmptyServiceCallInterfaceAction.stringdata0))
        return static_cast<void*>(const_cast< EmptyServiceCallInterfaceAction*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jsk_rviz_plugins::EmptyServiceCallInterfaceAction::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
