/****************************************************************************
** Meta object code from reading C++ file 'pose_array_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/pose_array_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pose_array_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay_t {
    QByteArrayData data[7];
    char stringdata0[114];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay_t qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay = {
    {
QT_MOC_LITERAL(0, 0, 34), // "jsk_rviz_plugins::PoseArrayDi..."
QT_MOC_LITERAL(1, 35, 17), // "updateShapeChoice"
QT_MOC_LITERAL(2, 53, 0), // ""
QT_MOC_LITERAL(3, 54, 21), // "updateShapeVisibility"
QT_MOC_LITERAL(4, 76, 18), // "updateAxisGeometry"
QT_MOC_LITERAL(5, 95, 14), // "allocateCoords"
QT_MOC_LITERAL(6, 110, 3) // "num"

    },
    "jsk_rviz_plugins::PoseArrayDisplay\0"
    "updateShapeChoice\0\0updateShapeVisibility\0"
    "updateAxisGeometry\0allocateCoords\0num"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__PoseArrayDisplay[] = {

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
       1,    0,   34,    2, 0x08 /* Private */,
       3,    0,   35,    2, 0x08 /* Private */,
       4,    0,   36,    2, 0x08 /* Private */,
       5,    1,   37,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    6,

       0        // eod
};

void jsk_rviz_plugins::PoseArrayDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PoseArrayDisplay *_t = static_cast<PoseArrayDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateShapeChoice(); break;
        case 1: _t->updateShapeVisibility(); break;
        case 2: _t->updateAxisGeometry(); break;
        case 3: _t->allocateCoords((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::PoseArrayDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<geometry_msgs::PoseArray>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay.data,
      qt_meta_data_jsk_rviz_plugins__PoseArrayDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::PoseArrayDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::PoseArrayDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__PoseArrayDisplay.stringdata0))
        return static_cast<void*>(const_cast< PoseArrayDisplay*>(this));
    return rviz::MessageFilterDisplay<geometry_msgs::PoseArray>::qt_metacast(_clname);
}

int jsk_rviz_plugins::PoseArrayDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<geometry_msgs::PoseArray>::qt_metacall(_c, _id, _a);
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
