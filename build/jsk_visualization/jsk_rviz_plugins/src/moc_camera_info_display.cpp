/****************************************************************************
** Meta object code from reading C++ file 'camera_info_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/camera_info_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'camera_info_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay_t {
    QByteArrayData data[11];
    char stringdata0[192];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay_t qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay = {
    {
QT_MOC_LITERAL(0, 0, 35), // "jsk_rviz_plugins::CameraInfoD..."
QT_MOC_LITERAL(1, 36, 21), // "updateFarClipDistance"
QT_MOC_LITERAL(2, 58, 0), // ""
QT_MOC_LITERAL(3, 59, 11), // "updateAlpha"
QT_MOC_LITERAL(4, 71, 11), // "updateColor"
QT_MOC_LITERAL(5, 83, 15), // "updateShowEdges"
QT_MOC_LITERAL(6, 99, 18), // "updateShowPolygons"
QT_MOC_LITERAL(7, 118, 25), // "updateNotShowSidePolygons"
QT_MOC_LITERAL(8, 144, 16), // "updateImageTopic"
QT_MOC_LITERAL(9, 161, 14), // "updateUseImage"
QT_MOC_LITERAL(10, 176, 15) // "updateEdgeColor"

    },
    "jsk_rviz_plugins::CameraInfoDisplay\0"
    "updateFarClipDistance\0\0updateAlpha\0"
    "updateColor\0updateShowEdges\0"
    "updateShowPolygons\0updateNotShowSidePolygons\0"
    "updateImageTopic\0updateUseImage\0"
    "updateEdgeColor"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__CameraInfoDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x09 /* Protected */,
       3,    0,   60,    2, 0x09 /* Protected */,
       4,    0,   61,    2, 0x09 /* Protected */,
       5,    0,   62,    2, 0x09 /* Protected */,
       6,    0,   63,    2, 0x09 /* Protected */,
       7,    0,   64,    2, 0x09 /* Protected */,
       8,    0,   65,    2, 0x09 /* Protected */,
       9,    0,   66,    2, 0x09 /* Protected */,
      10,    0,   67,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
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

void jsk_rviz_plugins::CameraInfoDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        CameraInfoDisplay *_t = static_cast<CameraInfoDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateFarClipDistance(); break;
        case 1: _t->updateAlpha(); break;
        case 2: _t->updateColor(); break;
        case 3: _t->updateShowEdges(); break;
        case 4: _t->updateShowPolygons(); break;
        case 5: _t->updateNotShowSidePolygons(); break;
        case 6: _t->updateImageTopic(); break;
        case 7: _t->updateUseImage(); break;
        case 8: _t->updateEdgeColor(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::CameraInfoDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<sensor_msgs::CameraInfo>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay.data,
      qt_meta_data_jsk_rviz_plugins__CameraInfoDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::CameraInfoDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::CameraInfoDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__CameraInfoDisplay.stringdata0))
        return static_cast<void*>(const_cast< CameraInfoDisplay*>(this));
    return rviz::MessageFilterDisplay<sensor_msgs::CameraInfo>::qt_metacast(_clname);
}

int jsk_rviz_plugins::CameraInfoDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<sensor_msgs::CameraInfo>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
