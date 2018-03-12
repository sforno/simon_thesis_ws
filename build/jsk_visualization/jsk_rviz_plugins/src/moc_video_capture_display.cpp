/****************************************************************************
** Meta object code from reading C++ file 'video_capture_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/video_capture_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'video_capture_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay_t {
    QByteArrayData data[5];
    char stringdata0[83];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay_t qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay = {
    {
QT_MOC_LITERAL(0, 0, 37), // "jsk_rviz_plugins::VideoCaptur..."
QT_MOC_LITERAL(1, 38, 14), // "updateFileName"
QT_MOC_LITERAL(2, 53, 0), // ""
QT_MOC_LITERAL(3, 54, 18), // "updateStartCapture"
QT_MOC_LITERAL(4, 73, 9) // "updateFps"

    },
    "jsk_rviz_plugins::VideoCaptureDisplay\0"
    "updateFileName\0\0updateStartCapture\0"
    "updateFps"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__VideoCaptureDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x09 /* Protected */,
       3,    0,   30,    2, 0x09 /* Protected */,
       4,    0,   31,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::VideoCaptureDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        VideoCaptureDisplay *_t = static_cast<VideoCaptureDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateFileName(); break;
        case 1: _t->updateStartCapture(); break;
        case 2: _t->updateFps(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::VideoCaptureDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay.data,
      qt_meta_data_jsk_rviz_plugins__VideoCaptureDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::VideoCaptureDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::VideoCaptureDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__VideoCaptureDisplay.stringdata0))
        return static_cast<void*>(const_cast< VideoCaptureDisplay*>(this));
    return rviz::Display::qt_metacast(_clname);
}

int jsk_rviz_plugins::VideoCaptureDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
