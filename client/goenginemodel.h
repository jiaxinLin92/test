#ifndef GOENGINEMODEL_H
#define GOENGINEMODEL_H



#include "../mylibrary/go.h"
namespace go = mylib::go;

// qt
#include <QAbstractListModel>
#include <QPoint>


// stl
#include <memory>



class GoEngineModel : public QAbstractListModel {
  Q_OBJECT
public:
  Q_PROPERTY(QPoint boardSize READ boardSize NOTIFY boardSizeChanged)
  Q_PROPERTY(int    gameMode  READ gameMode  NOTIFY gameModeChanged)
  Q_PROPERTY(int    turn      READ turn      NOTIFY turnChanged)

  Q_PROPERTY(int noStone          MEMBER noStone          CONSTANT )
  Q_PROPERTY(int whiteStone       MEMBER whiteStone       CONSTANT )
  Q_PROPERTY(int blackStone       MEMBER blackStone       CONSTANT )

  Q_PROPERTY(int gameModeVsPlayer MEMBER gameModeVsPlayer CONSTANT )
  Q_PROPERTY(int gameModeVsAi     MEMBER gameModeVsAi     CONSTANT )
  Q_PROPERTY(int gameModeAi       MEMBER gameModeAi       CONSTANT )

  enum GoEngineModelRoles {
    StoneRole     = Qt::UserRole + 1,
    PositionRole
  };



  GoEngineModel(std::shared_ptr<go::Engine> engine, QObject *parent = nullptr );

  int                       rowCount(const QModelIndex &parent = QModelIndex()) const override;
  QVariant                  data(const QModelIndex &index, int role) const override;
  QHash<int,QByteArray>     roleNames() const override;


public slots:
  void      update();

private:
  const int noStone           = int(-1);
  const int whiteStone        = int(go::Stonecolor::White);
  const int blackStone        = int(go::Stonecolor::Black);

  const int gameModeVsPlayer  = int(go::GameMode::VsPlayer);
  const int gameModeVsAi      = int(go::GameMode::VsAi);
  const int gameModeAi        = int(go::GameMode::Ai);

  QPoint    boardSize() const;
  int       gameMode() const;
  int       turn() const;


  std::shared_ptr<go::Engine>   _engine;


signals:
  void      boardSizeChanged(QPoint);
  void      turnChanged(int);
  void      gameModeChanged(int);



};





#endif // GOENGINEMODEL_H

