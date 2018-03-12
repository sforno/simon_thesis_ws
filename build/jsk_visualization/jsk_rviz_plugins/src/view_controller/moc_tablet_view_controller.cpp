/****************************************************************************
** Meta object code from reading C++ file 'tablet_view_controller.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/jsk_visualization/jsk_rviz_plugins/src/view_controller/tablet_view_controller.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tablet_view_controller.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__TabletViewController_t {
    QByteArrayData data[10];
    char stringdata0[213];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__TabletViewController_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__TabletViewController_t qt_meta_stringdata_jsk_rviz_plugins__TabletViewController = {
    {
QT_MOC_LITERAL(0, 0, 38), // "jsk_rviz_plugins::TabletViewC..."
QT_MOC_LITERAL(1, 39, 19), // "updateAttachedFrame"
QT_MOC_LITERAL(2, 59, 0), // ""
QT_MOC_LITERAL(3, 60, 25), // "onDistancePropertyChanged"
QT_MOC_LITERAL(4, 86, 22), // "onFocusPropertyChanged"
QT_MOC_LITERAL(5, 109, 20), // "onEyePropertyChanged"
QT_MOC_LITERAL(6, 130, 19), // "onUpPropertyChanged"
QT_MOC_LITERAL(7, 150, 12), // "updateTopics"
QT_MOC_LITERAL(8, 163, 19), // "updatePublishTopics"
QT_MOC_LITERAL(9, 183, 29) // "updateMousePointPublishTopics"

    },
    "jsk_rviz_plugins::TabletViewController\0"
    "updateAttachedFrame\0\0onDistancePropertyChanged\0"
    "onFocusPropertyChanged\0onEyePropertyChanged\0"
    "onUpPropertyChanged\0updateTopics\0"
    "updatePublishTopics\0updateMousePointPublishTopics"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__TabletViewController[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x09 /* Protected */,
       3,    0,   55,    2, 0x09 /* Protected */,
       4,    0,   56,    2, 0x09 /* Protected */,
       5,    0,   57,    2, 0x09 /* Protected */,
       6,    0,   58,    2, 0x09 /* Protected */,
       7,    0,   59,    2, 0x09 /* Protected */,
       8,    0,   60,    2, 0x09 /* Protected */,
       9,    0,   61,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::TabletViewController::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TabletViewController *_t = static_cast<TabletViewController *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateAttachedFrame(); break;
        case 1: _t->onDistancePropertyChanged(); break;
        case 2: _t->onFocusPropertyChanged(); break;
        case 3: _t->onEyePropertyChanged(); break;
        case 4: _t->onUpPropertyChanged(); break;
        case 5: _t->updateTopics(); break;
        case 6: _t->updatePublishTopics(); break;
        case 7: _t->updateMousePointPublishTopics(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::TabletViewController::staticMetaObject = {
    { &rviz::ViewController::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__TabletViewController.data,
      qt_meta_data_jsk_rviz_plugins__TabletViewController,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::TabletViewController::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::TabletViewController::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__TabletViewController.stringdata0))
        return static_cast<void*>(const_cast< TabletViewController*>(this));
    return rviz::ViewController::qt_metacast(_clname);
}

int jsk_rviz_plugins::TabletViewController::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::ViewController::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
