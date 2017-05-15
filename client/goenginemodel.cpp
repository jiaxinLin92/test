#include "goenginemodel.h"



GoEngineModel::GoEngineModel(std::shared_ptr<go::Engine> engine, QObject *parent)
  : QAbstractListModel(parent), _engine{engine} {}

int
GoEngineModel::rowCount(const QModelIndex& parent) const {

  if(parent.isValid()) return 0;

  auto board_size = _engine->board().size();
  return board_size.first * board_size.second;
}

QVariant
GoEngineModel::data(const QModelIndex& index, int role) const {

  if(!index.isValid()) return QVariant();

  auto board_size_x = _engine->board().size().first;
  auto board_size_y = _engine->board().size().second;

  go::Point intersection(
        index.row() - (index.row()/board_size_x) * board_size_y,
        index.row() / board_size_x
        );

  if(role == StoneRole) {

    if( !_engine->board().hasStone(intersection) ) return QVariant(noStone);

    auto stone = _engine->board().stone(intersection);
    return QVariant(int(stone));
  }
  else if( role == PositionRole ) {
    return QPoint( intersection.first, intersection.second );
  }

  return QVariant();
}

QHash<int, QByteArray>
GoEngineModel::roleNames() const {

  QHash<int,QByteArray> role_names;
  role_names[StoneRole]    = "stone";
  role_names[PositionRole] = "position";

  return role_names;
}

void
GoEngineModel::update() {

  beginResetModel();
  endResetModel();
  emit gameModeChanged(gameMode());
  emit turnChanged(turn());
  emit boardSizeChanged(boardSize());
}

QPoint
GoEngineModel::boardSize() const {

  auto size = _engine->board().size();
  return QPoint( size.first, size.second );
}

int
GoEngineModel::turn() const {

  if(!_engine->isGameActive()) return -1;
  return int(_engine->turn());
}

int
GoEngineModel::gameMode() const {

  return int(_engine->gameMode());
}

