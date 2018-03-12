/****************************************************************************
** Meta object code from reading C++ file 'object_fit_operator.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/object_fit_operator.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'object_fit_operator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction_t {
    QByteArrayData data[9];
    char stringdata0[127];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction_t qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction = {
    {
QT_MOC_LITERAL(0, 0, 41), // "jsk_rviz_plugins::ObjectFitOp..."
QT_MOC_LITERAL(1, 42, 10), // "commandFit"
QT_MOC_LITERAL(2, 53, 0), // ""
QT_MOC_LITERAL(3, 54, 11), // "commandNear"
QT_MOC_LITERAL(4, 66, 12), // "commandOther"
QT_MOC_LITERAL(5, 79, 15), // "checkBoxChanged"
QT_MOC_LITERAL(6, 95, 5), // "state"
QT_MOC_LITERAL(7, 101, 20), // "publishObjectFitOder"
QT_MOC_LITERAL(8, 122, 4) // "type"

    },
    "jsk_rviz_plugins::ObjectFitOperatorAction\0"
    "commandFit\0\0commandNear\0commandOther\0"
    "checkBoxChanged\0state\0publishObjectFitOder\0"
    "type"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__ObjectFitOperatorAction[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x09 /* Protected */,
       3,    0,   40,    2, 0x09 /* Protected */,
       4,    0,   41,    2, 0x09 /* Protected */,
       5,    1,   42,    2, 0x09 /* Protected */,
       7,    1,   45,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    6,
    QMetaType::Void, QMetaType::Int,    8,

       0        // eod
};

void jsk_rviz_plugins::ObjectFitOperatorAction::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ObjectFitOperatorAction *_t = static_cast<ObjectFitOperatorAction *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->commandFit(); break;
        case 1: _t->commandNear(); break;
        case 2: _t->commandOther(); break;
        case 3: _t->checkBoxChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->publishObjectFitOder((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::ObjectFitOperatorAction::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction.data,
      qt_meta_data_jsk_rviz_plugins__ObjectFitOperatorAction,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::ObjectFitOperatorAction::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::ObjectFitOperatorAction::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__ObjectFitOperatorAction.stringdata0))
        return static_cast<void*>(const_cast< ObjectFitOperatorAction*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jsk_rviz_plugins::ObjectFitOperatorAction::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
