/****************************************************************************
** Meta object code from reading C++ file 'publish_topic.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/publish_topic.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'publish_topic.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__PublishTopic_t {
    QByteArrayData data[7];
    char stringdata0[77];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__PublishTopic_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__PublishTopic_t qt_meta_stringdata_jsk_rviz_plugins__PublishTopic = {
    {
QT_MOC_LITERAL(0, 0, 30), // "jsk_rviz_plugins::PublishTopic"
QT_MOC_LITERAL(1, 31, 8), // "setTopic"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 5), // "topic"
QT_MOC_LITERAL(4, 47, 7), // "sendVel"
QT_MOC_LITERAL(5, 55, 11), // "updateTopic"
QT_MOC_LITERAL(6, 67, 9) // "sendTopic"

    },
    "jsk_rviz_plugins::PublishTopic\0setTopic\0"
    "\0topic\0sendVel\0updateTopic\0sendTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__PublishTopic[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x0a /* Public */,
       4,    0,   37,    2, 0x09 /* Protected */,
       5,    0,   38,    2, 0x09 /* Protected */,
       6,    0,   39,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::PublishTopic::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PublishTopic *_t = static_cast<PublishTopic *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->sendVel(); break;
        case 2: _t->updateTopic(); break;
        case 3: _t->sendTopic(); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::PublishTopic::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__PublishTopic.data,
      qt_meta_data_jsk_rviz_plugins__PublishTopic,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::PublishTopic::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::PublishTopic::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__PublishTopic.stringdata0))
        return static_cast<void*>(const_cast< PublishTopic*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jsk_rviz_plugins::PublishTopic::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
