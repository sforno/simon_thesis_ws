/****************************************************************************
** Meta object code from reading C++ file 'people_position_measurement_array_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/people_position_measurement_array_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'people_position_measurement_array_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay_t {
    QByteArrayData data[6];
    char stringdata0[109];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay_t qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay = {
    {
QT_MOC_LITERAL(0, 0, 55), // "jsk_rviz_plugins::PeoplePosit..."
QT_MOC_LITERAL(1, 56, 10), // "updateSize"
QT_MOC_LITERAL(2, 67, 0), // ""
QT_MOC_LITERAL(3, 68, 13), // "updateTimeout"
QT_MOC_LITERAL(4, 82, 15), // "updateAnonymous"
QT_MOC_LITERAL(5, 98, 10) // "updateText"

    },
    "jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay\0"
    "updateSize\0\0updateTimeout\0updateAnonymous\0"
    "updateText"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay[] = {

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
       5,    0,   37,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PeoplePositionMeasurementArrayDisplay *_t = static_cast<PeoplePositionMeasurementArrayDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateSize(); break;
        case 1: _t->updateTimeout(); break;
        case 2: _t->updateAnonymous(); break;
        case 3: _t->updateText(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<people_msgs::PositionMeasurementArray>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay.data,
      qt_meta_data_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__PeoplePositionMeasurementArrayDisplay.stringdata0))
        return static_cast<void*>(const_cast< PeoplePositionMeasurementArrayDisplay*>(this));
    return rviz::MessageFilterDisplay<people_msgs::PositionMeasurementArray>::qt_metacast(_clname);
}

int jsk_rviz_plugins::PeoplePositionMeasurementArrayDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<people_msgs::PositionMeasurementArray>::qt_metacall(_c, _id, _a);
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
