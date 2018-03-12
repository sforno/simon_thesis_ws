/****************************************************************************
** Meta object code from reading C++ file 'record_action.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/record_action.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'record_action.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__RecordAction_t {
    QByteArrayData data[13];
    char stringdata0[160];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__RecordAction_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__RecordAction_t qt_meta_stringdata_jsk_rviz_plugins__RecordAction = {
    {
QT_MOC_LITERAL(0, 0, 30), // "jsk_rviz_plugins::RecordAction"
QT_MOC_LITERAL(1, 31, 8), // "setTopic"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 5), // "topic"
QT_MOC_LITERAL(4, 47, 11), // "updateTopic"
QT_MOC_LITERAL(5, 59, 11), // "commandPlay"
QT_MOC_LITERAL(6, 71, 11), // "recordClick"
QT_MOC_LITERAL(7, 83, 12), // "addTopicList"
QT_MOC_LITERAL(8, 96, 11), // "std::string"
QT_MOC_LITERAL(9, 108, 10), // "topic_name"
QT_MOC_LITERAL(10, 119, 17), // "OnClickPlayButton"
QT_MOC_LITERAL(11, 137, 2), // "id"
QT_MOC_LITERAL(12, 140, 19) // "OnClickDeleteButton"

    },
    "jsk_rviz_plugins::RecordAction\0setTopic\0"
    "\0topic\0updateTopic\0commandPlay\0"
    "recordClick\0addTopicList\0std::string\0"
    "topic_name\0OnClickPlayButton\0id\0"
    "OnClickDeleteButton"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__RecordAction[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x0a /* Public */,
       4,    0,   52,    2, 0x09 /* Protected */,
       5,    0,   53,    2, 0x09 /* Protected */,
       6,    0,   54,    2, 0x09 /* Protected */,
       7,    1,   55,    2, 0x09 /* Protected */,
      10,    1,   58,    2, 0x09 /* Protected */,
      12,    1,   61,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void, QMetaType::Int,   11,

       0        // eod
};

void jsk_rviz_plugins::RecordAction::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RecordAction *_t = static_cast<RecordAction *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->commandPlay(); break;
        case 3: _t->recordClick(); break;
        case 4: _t->addTopicList((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 5: _t->OnClickPlayButton((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->OnClickDeleteButton((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::RecordAction::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__RecordAction.data,
      qt_meta_data_jsk_rviz_plugins__RecordAction,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::RecordAction::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::RecordAction::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__RecordAction.stringdata0))
        return static_cast<void*>(const_cast< RecordAction*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jsk_rviz_plugins::RecordAction::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
