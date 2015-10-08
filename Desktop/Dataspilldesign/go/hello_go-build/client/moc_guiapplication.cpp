/****************************************************************************
** Meta object code from reading C++ file 'guiapplication.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../hello_go/client/guiapplication.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'guiapplication.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_GuiApplication_t {
    QByteArrayData data[8];
    char stringdata0[64];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GuiApplication_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GuiApplication_t qt_meta_stringdata_GuiApplication = {
    {
QT_MOC_LITERAL(0, 0, 14), // "GuiApplication"
QT_MOC_LITERAL(1, 15, 8), // "onSgInit"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 7), // "newGame"
QT_MOC_LITERAL(4, 33, 10), // "board_size"
QT_MOC_LITERAL(5, 44, 4), // "mode"
QT_MOC_LITERAL(6, 49, 10), // "placeStone"
QT_MOC_LITERAL(7, 60, 3) // "pos"

    },
    "GuiApplication\0onSgInit\0\0newGame\0"
    "board_size\0mode\0placeStone\0pos"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GuiApplication[] = {

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
       1,    0,   29,    2, 0x08 /* Private */,
       3,    2,   30,    2, 0x08 /* Private */,
       6,    1,   35,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QSizeF, QMetaType::Int,    4,    5,
    QMetaType::Void, QMetaType::QPointF,    7,

       0        // eod
};

void GuiApplication::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GuiApplication *_t = static_cast<GuiApplication *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onSgInit(); break;
        case 1: _t->newGame((*reinterpret_cast< QSizeF(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 2: _t->placeStone((*reinterpret_cast< QPointF(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject GuiApplication::staticMetaObject = {
    { &QGuiApplication::staticMetaObject, qt_meta_stringdata_GuiApplication.data,
      qt_meta_data_GuiApplication,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *GuiApplication::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GuiApplication::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_GuiApplication.stringdata0))
        return static_cast<void*>(const_cast< GuiApplication*>(this));
    return QGuiApplication::qt_metacast(_clname);
}

int GuiApplication::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGuiApplication::qt_metacall(_c, _id, _a);
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
