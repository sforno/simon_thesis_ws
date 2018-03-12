/****************************************************************************
** Meta object code from reading C++ file 'overlay_diagnostic_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/overlay_diagnostic_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'overlay_diagnostic_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay_t {
    QByteArrayData data[10];
    char stringdata0[161];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay_t qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay = {
    {
QT_MOC_LITERAL(0, 0, 42), // "jsk_rviz_plugins::OverlayDiag..."
QT_MOC_LITERAL(1, 43, 10), // "updateType"
QT_MOC_LITERAL(2, 54, 0), // ""
QT_MOC_LITERAL(3, 55, 14), // "updateRosTopic"
QT_MOC_LITERAL(4, 70, 26), // "updateDiagnosticsNamespace"
QT_MOC_LITERAL(5, 97, 10), // "updateSize"
QT_MOC_LITERAL(6, 108, 11), // "updateAlpha"
QT_MOC_LITERAL(7, 120, 9), // "updateTop"
QT_MOC_LITERAL(8, 130, 10), // "updateLeft"
QT_MOC_LITERAL(9, 141, 19) // "updateStallDuration"

    },
    "jsk_rviz_plugins::OverlayDiagnosticDisplay\0"
    "updateType\0\0updateRosTopic\0"
    "updateDiagnosticsNamespace\0updateSize\0"
    "updateAlpha\0updateTop\0updateLeft\0"
    "updateStallDuration"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__OverlayDiagnosticDisplay[] = {

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

void jsk_rviz_plugins::OverlayDiagnosticDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OverlayDiagnosticDisplay *_t = static_cast<OverlayDiagnosticDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateType(); break;
        case 1: _t->updateRosTopic(); break;
        case 2: _t->updateDiagnosticsNamespace(); break;
        case 3: _t->updateSize(); break;
        case 4: _t->updateAlpha(); break;
        case 5: _t->updateTop(); break;
        case 6: _t->updateLeft(); break;
        case 7: _t->updateStallDuration(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::OverlayDiagnosticDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay.data,
      qt_meta_data_jsk_rviz_plugins__OverlayDiagnosticDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::OverlayDiagnosticDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::OverlayDiagnosticDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__OverlayDiagnosticDisplay.stringdata0))
        return static_cast<void*>(const_cast< OverlayDiagnosticDisplay*>(this));
    return rviz::Display::qt_metacast(_clname);
}

int jsk_rviz_plugins::OverlayDiagnosticDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
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
