/****************************************************************************
** Meta object code from reading C++ file 'overlay_text_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/overlay_text_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'overlay_text_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay_t {
    QByteArrayData data[16];
    char stringdata0[257];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay_t qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay = {
    {
QT_MOC_LITERAL(0, 0, 36), // "jsk_rviz_plugins::OverlayText..."
QT_MOC_LITERAL(1, 37, 11), // "updateTopic"
QT_MOC_LITERAL(2, 49, 0), // ""
QT_MOC_LITERAL(3, 50, 32), // "updateOvertakePositionProperties"
QT_MOC_LITERAL(4, 83, 29), // "updateOvertakeColorProperties"
QT_MOC_LITERAL(5, 113, 9), // "updateTop"
QT_MOC_LITERAL(6, 123, 10), // "updateLeft"
QT_MOC_LITERAL(7, 134, 11), // "updateWidth"
QT_MOC_LITERAL(8, 146, 12), // "updateHeight"
QT_MOC_LITERAL(9, 159, 14), // "updateTextSize"
QT_MOC_LITERAL(10, 174, 13), // "updateFGColor"
QT_MOC_LITERAL(11, 188, 13), // "updateFGAlpha"
QT_MOC_LITERAL(12, 202, 13), // "updateBGColor"
QT_MOC_LITERAL(13, 216, 13), // "updateBGAlpha"
QT_MOC_LITERAL(14, 230, 10), // "updateFont"
QT_MOC_LITERAL(15, 241, 15) // "updateLineWidth"

    },
    "jsk_rviz_plugins::OverlayTextDisplay\0"
    "updateTopic\0\0updateOvertakePositionProperties\0"
    "updateOvertakeColorProperties\0updateTop\0"
    "updateLeft\0updateWidth\0updateHeight\0"
    "updateTextSize\0updateFGColor\0updateFGAlpha\0"
    "updateBGColor\0updateBGAlpha\0updateFont\0"
    "updateLineWidth"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__OverlayTextDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   84,    2, 0x09 /* Protected */,
       3,    0,   85,    2, 0x09 /* Protected */,
       4,    0,   86,    2, 0x09 /* Protected */,
       5,    0,   87,    2, 0x09 /* Protected */,
       6,    0,   88,    2, 0x09 /* Protected */,
       7,    0,   89,    2, 0x09 /* Protected */,
       8,    0,   90,    2, 0x09 /* Protected */,
       9,    0,   91,    2, 0x09 /* Protected */,
      10,    0,   92,    2, 0x09 /* Protected */,
      11,    0,   93,    2, 0x09 /* Protected */,
      12,    0,   94,    2, 0x09 /* Protected */,
      13,    0,   95,    2, 0x09 /* Protected */,
      14,    0,   96,    2, 0x09 /* Protected */,
      15,    0,   97,    2, 0x09 /* Protected */,

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
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::OverlayTextDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OverlayTextDisplay *_t = static_cast<OverlayTextDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateTopic(); break;
        case 1: _t->updateOvertakePositionProperties(); break;
        case 2: _t->updateOvertakeColorProperties(); break;
        case 3: _t->updateTop(); break;
        case 4: _t->updateLeft(); break;
        case 5: _t->updateWidth(); break;
        case 6: _t->updateHeight(); break;
        case 7: _t->updateTextSize(); break;
        case 8: _t->updateFGColor(); break;
        case 9: _t->updateFGAlpha(); break;
        case 10: _t->updateBGColor(); break;
        case 11: _t->updateBGAlpha(); break;
        case 12: _t->updateFont(); break;
        case 13: _t->updateLineWidth(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::OverlayTextDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay.data,
      qt_meta_data_jsk_rviz_plugins__OverlayTextDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::OverlayTextDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::OverlayTextDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__OverlayTextDisplay.stringdata0))
        return static_cast<void*>(const_cast< OverlayTextDisplay*>(this));
    return rviz::Display::qt_metacast(_clname);
}

int jsk_rviz_plugins::OverlayTextDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 14;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
