/****************************************************************************
** Meta object code from reading C++ file 'torus_array_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/jsk_visualization/jsk_rviz_plugins/src/torus_array_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'torus_array_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay_t {
    QByteArrayData data[22];
    char stringdata0[326];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay_t qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay = {
    {
QT_MOC_LITERAL(0, 0, 35), // "jsk_rviz_plugins::TorusArrayD..."
QT_MOC_LITERAL(1, 36, 11), // "updateColor"
QT_MOC_LITERAL(2, 48, 0), // ""
QT_MOC_LITERAL(3, 49, 11), // "updateAlpha"
QT_MOC_LITERAL(4, 61, 17), // "updateUVdimension"
QT_MOC_LITERAL(5, 79, 15), // "updateAutoColor"
QT_MOC_LITERAL(6, 95, 16), // "updateShowNormal"
QT_MOC_LITERAL(7, 112, 18), // "updateNormalLength"
QT_MOC_LITERAL(8, 131, 21), // "calcurateTriangleMesh"
QT_MOC_LITERAL(9, 153, 15), // "large_dimension"
QT_MOC_LITERAL(10, 169, 15), // "small_dimension"
QT_MOC_LITERAL(11, 185, 12), // "large_radius"
QT_MOC_LITERAL(12, 198, 12), // "small_radius"
QT_MOC_LITERAL(13, 211, 13), // "Ogre::Vector3"
QT_MOC_LITERAL(14, 225, 3), // "pos"
QT_MOC_LITERAL(15, 229, 16), // "Ogre::Quaternion"
QT_MOC_LITERAL(16, 246, 1), // "q"
QT_MOC_LITERAL(17, 248, 22), // "std::vector<Triangle>&"
QT_MOC_LITERAL(18, 271, 9), // "triangles"
QT_MOC_LITERAL(19, 281, 27), // "std::vector<Ogre::Vector3>&"
QT_MOC_LITERAL(20, 309, 8), // "vertices"
QT_MOC_LITERAL(21, 318, 7) // "normals"

    },
    "jsk_rviz_plugins::TorusArrayDisplay\0"
    "updateColor\0\0updateAlpha\0updateUVdimension\0"
    "updateAutoColor\0updateShowNormal\0"
    "updateNormalLength\0calcurateTriangleMesh\0"
    "large_dimension\0small_dimension\0"
    "large_radius\0small_radius\0Ogre::Vector3\0"
    "pos\0Ogre::Quaternion\0q\0std::vector<Triangle>&\0"
    "triangles\0std::vector<Ogre::Vector3>&\0"
    "vertices\0normals"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__TorusArrayDisplay[] = {

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
       1,    0,   49,    2, 0x08 /* Private */,
       3,    0,   50,    2, 0x08 /* Private */,
       4,    0,   51,    2, 0x08 /* Private */,
       5,    0,   52,    2, 0x08 /* Private */,
       6,    0,   53,    2, 0x08 /* Private */,
       7,    0,   54,    2, 0x08 /* Private */,
       8,    9,   55,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Float, QMetaType::Float, 0x80000000 | 13, 0x80000000 | 15, 0x80000000 | 17, 0x80000000 | 19, 0x80000000 | 19,    9,   10,   11,   12,   14,   16,   18,   20,   21,

       0        // eod
};

void jsk_rviz_plugins::TorusArrayDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TorusArrayDisplay *_t = static_cast<TorusArrayDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColor(); break;
        case 1: _t->updateAlpha(); break;
        case 2: _t->updateUVdimension(); break;
        case 3: _t->updateAutoColor(); break;
        case 4: _t->updateShowNormal(); break;
        case 5: _t->updateNormalLength(); break;
        case 6: _t->calcurateTriangleMesh((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4])),(*reinterpret_cast< Ogre::Vector3(*)>(_a[5])),(*reinterpret_cast< Ogre::Quaternion(*)>(_a[6])),(*reinterpret_cast< std::vector<Triangle>(*)>(_a[7])),(*reinterpret_cast< std::vector<Ogre::Vector3>(*)>(_a[8])),(*reinterpret_cast< std::vector<Ogre::Vector3>(*)>(_a[9]))); break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::TorusArrayDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<jsk_recognition_msgs::TorusArray>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay.data,
      qt_meta_data_jsk_rviz_plugins__TorusArrayDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *jsk_rviz_plugins::TorusArrayDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::TorusArrayDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__TorusArrayDisplay.stringdata0))
        return static_cast<void*>(const_cast< TorusArrayDisplay*>(this));
    return rviz::MessageFilterDisplay<jsk_recognition_msgs::TorusArray>::qt_metacast(_clname);
}

int jsk_rviz_plugins::TorusArrayDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<jsk_recognition_msgs::TorusArray>::qt_metacall(_c, _id, _a);
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
