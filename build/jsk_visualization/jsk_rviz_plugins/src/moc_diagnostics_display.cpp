/****************************************************************************
** Meta object code from reading C++ file 'diagnostics_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/diagnostics_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'diagnostics_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay_t {
    QByteArrayData data[9];
    char stringdata0[153];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay_t qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay = {
    {
QT_MOC_LITERAL(0, 0, 36), // "jsk_rviz_plugins::Diagnostics..."
QT_MOC_LITERAL(1, 37, 14), // "updateRosTopic"
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 26), // "updateDiagnosticsNamespace"
QT_MOC_LITERAL(4, 80, 12), // "updateRadius"
QT_MOC_LITERAL(5, 93, 15), // "updateLineWidth"
QT_MOC_LITERAL(6, 109, 10), // "updateAxis"
QT_MOC_LITERAL(7, 120, 14), // "updateFontSize"
QT_MOC_LITERAL(8, 135, 17) // "fillNamespaceList"

    },
    "jsk_rviz_plugins::DiagnosticsDisplay\0"
    "updateRosTopic\0\0updateDiagnosticsNamespace\0"
    "updateRadius\0updateLineWidth\0updateAxis\0"
    "updateFontSize\0fillNamespaceList"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__DiagnosticsDisplay[] = {

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
       1,    0,   49,    2, 0x09 /* Protected */,
       3,    0,   50,    2, 0x09 /* Protected */,
       4,    0,   51,    2, 0x09 /* Protected */,
       5,    0,   52,    2, 0x09 /* Protected */,
       6,    0,   53,    2, 0x09 /* Protected */,
       7,    0,   54,    2, 0x09 /* Protected */,
       8,    0,   55,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::DiagnosticsDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DiagnosticsDisplay *_t = static_cast<DiagnosticsDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateRosTopic(); break;
        case 1: _t->updateDiagnosticsNamespace(); break;
        case 2: _t->updateRadius(); break;
        case 3: _t->updateLineWidth(); break;
        case 4: _t->updateAxis(); break;
        case 5: _t->updateFontSize(); break;
        case 6: _t->fillNamespaceList(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::DiagnosticsDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay.data,
      qt_meta_data_jsk_rviz_plugins__DiagnosticsDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::DiagnosticsDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::DiagnosticsDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__DiagnosticsDisplay.stringdata0))
        return static_cast<void*>(const_cast< DiagnosticsDisplay*>(this));
    return rviz::Display::qt_metacast(_clname);
}

int jsk_rviz_plugins::DiagnosticsDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
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
