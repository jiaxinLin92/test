#ifndef GUIAPPLICATION_H
#define GUIAPPLICATION_H


// local
#include "goenginemodel.h"

// mylibrary
#include "../mylibrary/go.h"
namespace go = mylib::go;

// qt
#include <QGuiApplication>
#include <QQuickView>
#include <QSizeF>


// stl
#include <memory>


class GuiApplication : public QGuiApplication {
  Q_OBJECT
public:
  GuiApplication( int& argc, char** argv );

protected:
  void          timerEvent(QTimerEvent *) override;

private:
  void          invokeNextTurn();
  void          startTimer();
  void          stopTimer();

  std::shared_ptr<go::Engine>     _engine;
  GoEngineModel                   _model;
  QQuickView                      _view;
  int                             _timer_id;

private slots:
  void          onSgInit();
  void          newGame( QSizeF board_size, int mode );
  void          placeStone( QPointF pos );


}; // END class GuiApplication





#endif // GUIAPPLICATION_H
