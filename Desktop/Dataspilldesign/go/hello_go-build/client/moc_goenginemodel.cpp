/****************************************************************************
** Meta object code from reading C++ file 'goenginemodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../hello_go/client/goenginemodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'goenginemodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_GoEngineModel_t {
    QByteArrayData data[15];
    char stringdata0[162];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GoEngineModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GoEngineModel_t qt_meta_stringdata_GoEngineModel = {
    {
QT_MOC_LITERAL(0, 0, 13), // "GoEngineModel"
QT_MOC_LITERAL(1, 14, 16), // "boardSizeChanged"
QT_MOC_LITERAL(2, 31, 0), // ""
QT_MOC_LITERAL(3, 32, 11), // "turnChanged"
QT_MOC_LITERAL(4, 44, 15), // "gameModeChanged"
QT_MOC_LITERAL(5, 60, 6), // "update"
QT_MOC_LITERAL(6, 67, 9), // "boardSize"
QT_MOC_LITERAL(7, 77, 8), // "gameMode"
QT_MOC_LITERAL(8, 86, 4), // "turn"
QT_MOC_LITERAL(9, 91, 7), // "noStone"
QT_MOC_LITERAL(10, 99, 10), // "whiteStone"
QT_MOC_LITERAL(11, 110, 10), // "blackStone"
QT_MOC_LITERAL(12, 121, 16), // "gameModeVsPlayer"
QT_MOC_LITERAL(13, 138, 12), // "gameModeVsAi"
QT_MOC_LITERAL(14, 151, 10) // "gameModeAi"

    },
    "GoEngineModel\0boardSizeChanged\0\0"
    "turnChanged\0gameModeChanged\0update\0"
    "boardSize\0gameMode\0turn\0noStone\0"
    "whiteStone\0blackStone\0gameModeVsPlayer\0"
    "gameModeVsAi\0gameModeAi"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GoEngineModel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       9,   44, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06 /* Public */,
       3,    1,   37,    2, 0x06 /* Public */,
       4,    1,   40,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    0,   43,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QPoint,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,

 // slots: parameters
    QMetaType::Void,

 // properties: name, type, flags
       6, QMetaType::QPoint, 0x00495001,
       7, QMetaType::Int, 0x00495001,
       8, QMetaType::Int, 0x00495001,
       9, QMetaType::Int, 0x00095401,
      10, QMetaType::Int, 0x00095401,
      11, QMetaType::Int, 0x00095401,
      12, QMetaType::Int, 0x00095401,
      13, QMetaType::Int, 0x00095401,
      14, QMetaType::Int, 0x00095401,

 // properties: notify_signal_id
       0,
       2,
       1,
       0,
       0,
       0,
       0,
       0,
       0,

       0        // eod
};

void GoEngineModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GoEngineModel *_t = static_cast<GoEngineModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->boardSizeChanged((*reinterpret_cast< QPoint(*)>(_a[1]))); break;
        case 1: _t->turnChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->gameModeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->update(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (GoEngineModel::*_t)(QPoint );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&GoEngineModel::boardSizeChanged)) {
                *result = 0;
            }
        }
        {
            typedef void (GoEngineModel::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&GoEngineModel::turnChanged)) {
                *result = 1;
            }
        }
        {
            typedef void (GoEngineModel::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&GoEngineModel::gameModeChanged)) {
                *result = 2;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        GoEngineModel *_t = static_cast<GoEngineModel *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QPoint*>(_v) = _t->boardSize(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->gameMode(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->turn(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->noStone; break;
        case 4: *reinterpret_cast< int*>(_v) = _t->whiteStone; break;
        case 5: *reinterpret_cast< int*>(_v) = _t->blackStone; break;
        case 6: *reinterpret_cast< int*>(_v) = _t->gameModeVsPlayer; break;
        case 7: *reinterpret_cast< int*>(_v) = _t->gameModeVsAi; break;
        case 8: *reinterpret_cast< int*>(_v) = _t->gameModeAi; break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject GoEngineModel::staticMetaObject = {
    { &QAbstractListModel::staticMetaObject, qt_meta_stringdata_GoEngineModel.data,
      qt_meta_data_GoEngineModel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *GoEngineModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GoEngineModel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_GoEngineModel.stringdata0))
        return static_cast<void*>(const_cast< GoEngineModel*>(this));
    return QAbstractListModel::qt_metacast(_clname);
}

int GoEngineModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractListModel::qt_metacall(_c, _id, _a);
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
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 9;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 9;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void GoEngineModel::boardSizeChanged(QPoint _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GoEngineModel::turnChanged(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void GoEngineModel::gameModeChanged(int _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
