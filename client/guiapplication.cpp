#include "guiapplication.h"


// qt
#include <QQmlContext>
#include <QQuickItem>
#include <QTimer>
#include <QDebug>


GuiApplication::GuiApplication(int& argc, char** argv)
  : QGuiApplication(argc,argv),
    _engine {std::make_shared<go::Engine>()},
    _model {_engine},
    _view {},
    _timer_id {0}


{

  // Set up QML gui
  _view.setResizeMode(QQuickView::SizeRootObjectToView);
  _view.setMinimumSize( QSize(800,600) );
  _view.rootContext()->setContextProperty("go", &_model);
  _view.setSource(QUrl("qrc:/qml/gui.qml"));

  connect( &_view, &QQuickView::sceneGraphInitialized, this, &GuiApplication::onSgInit );

  _view.show();
}

void
GuiApplication::timerEvent(QTimerEvent*) {

  invokeNextTurn();

  if(!_engine->isGameActive())
    stopTimer();
}

void
GuiApplication::invokeNextTurn() {

  _engine->nextTurn();
  _model.update();
}

void
GuiApplication::startTimer() {

  if(_timer_id) return;

  _timer_id = QGuiApplication::startTimer(0);
}

void
GuiApplication::stopTimer() {

  if(!_timer_id) return;

  killTimer(_timer_id);
  _timer_id = 0;
}

void
GuiApplication::newGame(QSizeF board_size, int mode) {

  stopTimer();

  QSize size( board_size.width(), board_size.height() );
  switch(go::GameMode(mode)) {
    case go::GameMode::VsPlayer:
      _engine->newGame( go::Size(size.width(), size.height()) );
      break;
    case go::GameMode::VsAi:
      _engine->newGameVsAi( go::Size(size.width(), size.height()) );
      break;
    case go::GameMode::Ai:
      _engine->newGameAiVsAi( go::Size(size.width(), size.height()) );
      startTimer();
      break;
    default: break;
  }

  invokeNextTurn();
}

void
GuiApplication::placeStone(QPointF point) {

  go::Point intersection(point.x(),point.y());

  auto success = _engine->validateStone(intersection);
  if(!success) return;

  _engine->placeStone(intersection);
  invokeNextTurn();
}


void
GuiApplication::onSgInit() {

  connect( _view.rootObject(),
           SIGNAL(initNewGame(QSizeF,int)),
           this,
           SLOT(newGame(QSizeF,int)) );


  connect( _view.rootObject(),
           SIGNAL(placeStone(QPointF)),
           this,
           SLOT(placeStone(QPointF)) );

}
