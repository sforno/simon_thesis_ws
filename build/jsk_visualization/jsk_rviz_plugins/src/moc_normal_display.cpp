/****************************************************************************
** Meta object code from reading C++ file 'normal_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/normal_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'normal_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay_t {
    QByteArrayData data[16];
    char stringdata0[185];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay_t qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay = {
    {
QT_MOC_LITERAL(0, 0, 31), // "jsk_rviz_plugins::NormalDisplay"
QT_MOC_LITERAL(1, 32, 14), // "processMessage"
QT_MOC_LITERAL(2, 47, 0), // ""
QT_MOC_LITERAL(3, 48, 34), // "sensor_msgs::PointCloud2::Con..."
QT_MOC_LITERAL(4, 83, 3), // "msg"
QT_MOC_LITERAL(5, 87, 11), // "updateStyle"
QT_MOC_LITERAL(6, 99, 14), // "updateSkipRate"
QT_MOC_LITERAL(7, 114, 13), // "updateRainbow"
QT_MOC_LITERAL(8, 128, 11), // "updateScale"
QT_MOC_LITERAL(9, 140, 11), // "updateAlpha"
QT_MOC_LITERAL(10, 152, 10), // "getRainbow"
QT_MOC_LITERAL(11, 163, 5), // "value"
QT_MOC_LITERAL(12, 169, 6), // "float&"
QT_MOC_LITERAL(13, 176, 2), // "rf"
QT_MOC_LITERAL(14, 179, 2), // "gf"
QT_MOC_LITERAL(15, 182, 2) // "bf"

    },
    "jsk_rviz_plugins::NormalDisplay\0"
    "processMessage\0\0sensor_msgs::PointCloud2::ConstPtr\0"
    "msg\0updateStyle\0updateSkipRate\0"
    "updateRainbow\0updateScale\0updateAlpha\0"
    "getRainbow\0value\0float&\0rf\0gf\0bf"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__NormalDisplay[] = {

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
       1,    1,   49,    2, 0x08 /* Private */,
       5,    0,   52,    2, 0x08 /* Private */,
       6,    0,   53,    2, 0x08 /* Private */,
       7,    0,   54,    2, 0x08 /* Private */,
       8,    0,   55,    2, 0x08 /* Private */,
       9,    0,   56,    2, 0x08 /* Private */,
      10,    4,   57,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Float, 0x80000000 | 12, 0x80000000 | 12, 0x80000000 | 12,   11,   13,   14,   15,

       0        // eod
};

void jsk_rviz_plugins::NormalDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        NormalDisplay *_t = static_cast<NormalDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->processMessage((*reinterpret_cast< const sensor_msgs::PointCloud2::ConstPtr(*)>(_a[1]))); break;
        case 1: _t->updateStyle(); break;
        case 2: _t->updateSkipRate(); break;
        case 3: _t->updateRainbow(); break;
        case 4: _t->updateScale(); break;
        case 5: _t->updateAlpha(); break;
        case 6: _t->getRainbow((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4]))); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::NormalDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<sensor_msgs::PointCloud2>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay.data,
      qt_meta_data_jsk_rviz_plugins__NormalDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::NormalDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::NormalDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__NormalDisplay.stringdata0))
        return static_cast<void*>(const_cast< NormalDisplay*>(this));
    return rviz::MessageFilterDisplay<sensor_msgs::PointCloud2>::qt_metacast(_clname);
}

int jsk_rviz_plugins::NormalDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<sensor_msgs::PointCloud2>::qt_metacall(_c, _id, _a);
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
