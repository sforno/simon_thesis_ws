/****************************************************************************
** Meta object code from reading C++ file 'tablet_controller_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/tablet_controller_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tablet_controller_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea_t {
    QByteArrayData data[1];
    char stringdata0[35];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea_t qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea = {
    {
QT_MOC_LITERAL(0, 0, 34) // "jsk_rviz_plugins::TabletCmdVe..."

    },
    "jsk_rviz_plugins::TabletCmdVelArea"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__TabletCmdVelArea[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

void jsk_rviz_plugins::TabletCmdVelArea::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::TabletCmdVelArea::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea.data,
      qt_meta_data_jsk_rviz_plugins__TabletCmdVelArea,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::TabletCmdVelArea::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::TabletCmdVelArea::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__TabletCmdVelArea.stringdata0))
        return static_cast<void*>(const_cast< TabletCmdVelArea*>(this));
    return QWidget::qt_metacast(_clname);
}

int jsk_rviz_plugins::TabletCmdVelArea::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
struct qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel_t {
    QByteArrayData data[8];
    char stringdata0[146];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel_t qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel = {
    {
QT_MOC_LITERAL(0, 0, 39), // "jsk_rviz_plugins::TabletContr..."
QT_MOC_LITERAL(1, 40, 17), // "taskButtonClicked"
QT_MOC_LITERAL(2, 58, 0), // ""
QT_MOC_LITERAL(3, 59, 17), // "taskCancelClicked"
QT_MOC_LITERAL(4, 77, 18), // "taskExecuteClicked"
QT_MOC_LITERAL(5, 96, 17), // "spotButtonClicked"
QT_MOC_LITERAL(6, 114, 13), // "spotGoClicked"
QT_MOC_LITERAL(7, 128, 17) // "spotCancelClicked"

    },
    "jsk_rviz_plugins::TabletControllerPanel\0"
    "taskButtonClicked\0\0taskCancelClicked\0"
    "taskExecuteClicked\0spotButtonClicked\0"
    "spotGoClicked\0spotCancelClicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__TabletControllerPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x09 /* Protected */,
       3,    0,   45,    2, 0x09 /* Protected */,
       4,    0,   46,    2, 0x09 /* Protected */,
       5,    0,   47,    2, 0x09 /* Protected */,
       6,    0,   48,    2, 0x09 /* Protected */,
       7,    0,   49,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::TabletControllerPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TabletControllerPanel *_t = static_cast<TabletControllerPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->taskButtonClicked(); break;
        case 1: _t->taskCancelClicked(); break;
        case 2: _t->taskExecuteClicked(); break;
        case 3: _t->spotButtonClicked(); break;
        case 4: _t->spotGoClicked(); break;
        case 5: _t->spotCancelClicked(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::TabletControllerPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel.data,
      qt_meta_data_jsk_rviz_plugins__TabletControllerPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::TabletControllerPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::TabletControllerPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__TabletControllerPanel.stringdata0))
        return static_cast<void*>(const_cast< TabletControllerPanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int jsk_rviz_plugins::TabletControllerPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
