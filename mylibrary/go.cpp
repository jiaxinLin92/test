#include "go.h"
#include "randomai.h"
#include <iostream>

namespace mylib {
namespace go {



  namespace priv {

    Board_base::Board_base( Size size ) {

      resetBoard(size);
    }

    Board_base::Board_base(Board::BoardData&& data, Stonecolor turn, bool was_previous_pass)
      : _current{std::forward<Board::BoardData>(data),turn,was_previous_pass}
    {
      // ... init ...
    }

//    bool Board_base::Position::hasStone()
//    {
//     return true;
//    }





    Board_base::Position::Position(Board::BoardData&& data, Stonecolor trn, bool prev_pass)
      : board{data}, turn{trn}, was_previous_pass{prev_pass} {}


    void
    Board_base::resetBoard(Size size) {

      _current.board.clear();
      _size = size;
      _current.turn = Stonecolor::Black;
    }

    Size
    Board_base::size() const {

      return _size;
    }

    bool
    Board_base::wasPreviousPass() const {

      return _current.was_previous_pass;

    }


    //HELLO hi

    Stonecolor
    Board_base::turn() const {

      return _current.turn == Stonecolor::Black ? Stonecolor::White : Stonecolor::Black;
    }

  }

  void
  Board::placeStone(Point intersection) {

    _current.board[intersection] = turn();
    _current.turn = turn();
      saveprecious(intersection);//存储前一步
      removeStone();//吃子
      cleverStone();//防自杀
      calculateScore();//计算得分
  }

  bool
  Board::kostone(Point intersection) const
  {
      if (_current.turn == Stonecolor::Black && _kostone_w == intersection)//
          return true;
      if (_current.turn == Stonecolor::White && _kostone_b == intersection)
          return true;
      return false;
  }

  void
  Board::saveprecious(Point intersection)
  {
      if (_current.turn==Stonecolor::Black)
          _kostone_w = intersection;
      else
          _kostone_b = intersection;
  }

  void
  Board::cleverStone()   //if(      turn() == Stonecolor::Black ) return _black_player;
                         // else if( turn() == Stonecolor::White ) return _white_player;

  {
      calculateBaseFreedom();
      Point temp;
      //Point intersection;


      for(int i=0;i<_size.first;i++)
          for(int j=0;j<_size.second;j++)
          {
              temp.first = i;
              temp.second = j;

             // if(_current.board.count(East) >0 &&_current.board.count(West) >0 &&_current.board.count(North) >0 &&_current.board.count(South) >0)
              if(_current.freedom[temp]==0 )
                    {


                  if(_current.board.erase(temp))
                  {
                  _current.turn = turn();
                  }
                         _current.board.erase(temp);
                        //_current.board[intersection] = turn();
                     }

         }
      //_current.board[temp] = turn();


  }


/*//////////////////////////////////////////////// */

  void
  Board::calculateFreedom(Point intersection){//计算气（当下子，点击棋盘时）
    _current.sharedblockchecked[intersection] = true;//标记当前的子计算过气
    Point East;//当前子的东面
    East.first = intersection.first+1;//第一个坐标加一
    East.second = intersection.second;//第二个坐标不变
    Point West;//当前子的西面
    West.first = intersection.first-1;//第一个坐标减一
    West.second = intersection.second;//第二个坐标不变
    Point North;//当前子的北面
    North.first = intersection.first;//第一个坐标不变
    North.second = intersection.second-1;//第二个坐标减一
    Point South;//当前子的南面
    South.first = intersection.first;//第一个坐标不变
    South.second = intersection.second+1;//第二个坐标加一
    if (East.first<_size.first)//如果东边的子小于棋盘边
    {
        if(_current.board.count(East) <1 && _current.freedomchecked[East] == false)//并且东边为空&&该点未曾计算过气则
        {
            _freedom++;//气数加1
            _current.freedomchecked[East] = true;//检查过有气
        }
        else if(_current.board.count(East) >0 && _current.board[East] == _current.board[intersection] && _current.sharedblockchecked[East] == false)//否则 否则如果右临点有子&&且为和本子同色子并且 &&该子未曾计算过气则
                    calculateFreedom(East);//递归调用东边子 计算气

    }
    if (West.first>=0)
    {
        if(_current.board.count(West)<1 && _current.freedomchecked[West] == false)
        {
            _freedom++;
            _current.freedomchecked[West] = true;
        }
        else if(_current.board.count(West) >0 && _current.board[West] == _current.board[intersection] && _current.sharedblockchecked[West] == false)
                    calculateFreedom(West);
     }
    if (North.second>=0)
    {
        if(_current.board.count(North)<1 && _current.freedomchecked[North] == false)
        {
            _freedom++;
            _current.freedomchecked[North] = true;
        }
        else if(_current.board.count(North) >0 && _current.board[North] == _current.board[intersection] && _current.sharedblockchecked[North] == false)
                    calculateFreedom(North);
    }
    if (South.second<_size.second)
    {
        if(_current.board.count(South)<1 && _current.freedomchecked[South] == false)
        {
            _freedom++;
            _current.freedomchecked[South] = true;
        }
        else if(_current.board.count(South) >0 && _current.board[South] == _current.board[intersection] && _current.sharedblockchecked[South] == false)
                    calculateFreedom(South);
    }
  }
  
  int
  Board::calculateFreedomBase(Point intersection){
      Point temp;//临时值
      for(int i=0;i<_size.first;i++)
          for(int j=0;j<_size.second;j++)
          {
              temp.first = i;//初始化变量，表示该子未计算串气
              temp.second = j;//初始化变量，表示该子未计算串气
              _current.freedomchecked[temp]=false;//没计算过这个子的气
              _current.sharedblockchecked[temp]=false;//未曾计算临子的气
          }
      _freedom = 0;//串气初值
      calculateFreedom(intersection);//调用串气子程序
      return _freedom;
  }
  
  void
  Board::calculateBaseFreedom(){
     Point temp;
     for(int i=0;i<=_size.first;i++)
         for(int j=0;j<=_size.second;j++)
         {
             temp.first = i;//初始化变量，表示该子未计算串气
             temp.second = j;//初始化变量，表示该子未计算串气
             if(_current.board.count(temp)>0)//如果当前这个有点
                 _current.freedom[temp] = calculateFreedomBase(temp);//当前气＝算过串气的气
         }
             
  }

  void
  Board::removeStone(){
      calculateBaseFreedom();
      Point temp;

      for(int i=0;i<_size.first;i++)
          for(int j=0;j<_size.second;j++)
          {
              temp.first = i;
              temp.second = j;
              if(_current.board.count(temp)>0 && _current.freedom[temp] == 0 && _current.board[temp] != _current.turn)//如果临时值有点&&自由度为0&&颜色不一致时
              {
                  saveprecious(temp);
                  _current.board.erase(temp);//清除这个棋子
              }
          }
  }
  
  void
  Board::passTurn() {

      _current.turn = turn();
  }

  bool
  Board::checkcolor()//检查颜色
  {
      if(_current.turn==Stonecolor::Black)
          return true;
    // std::cout<<checkcolor()<<std::endl;
      return false;
  }

  void Board::calculateScore()//
  {
//      int s;

//      for(s=0;_current.board.count(intersection);s++){

//          s++;
//      }
//     std::cout<<s<<std::endl;
      Point temp;//临时值
      int Blackscore=0;
      int Whitescore=0;
      for(int i=0;i<_size.first;i++)
          for(int j=0;j<_size.second;j++)
          {
              temp.first = i;
              temp.second = j;


//              if(      turn() == Stonecolor::Black ) return _black_player;
//              else if( turn() == Stonecolor::White ) return _white_player;


              if(_current.board.count(temp)>0 && _current.board[temp]==Stonecolor::Black)//_current.turn==Stonecolor::Black &&
              {

              Blackscore++;
              }
              if(_current.board.count(temp)>0 && _current.board[temp]==Stonecolor::White)
              {

              Whitescore++;
              }
              std::cout<<Blackscore<<"--------------"<<Whitescore<<std::endl;

  }

  }

  bool
  Board::hasStone(Point intersection) const {

    return _current.board.count(intersection);
  }

  Stonecolor
  Board::stone(Point intersection) const {

    return
            _current.board.at(intersection);
  }


  bool
  Board::isNextPositionValid(Point intersection) const {
    if (hasStone(intersection) )
        return false;
    if (kostone(intersection))
        return false;
    return true;
  }

  Engine::Engine()
    : _board{}, _game_mode{}, _active_game{false},
      _white_player{nullptr}, _black_player{nullptr} {}

  void
  Engine::newGame(Size size) {

    _board.resetBoard(size);

    _game_mode = GameMode::VsPlayer;
    _active_game = true;
    _white_player = std::make_shared<HumanPlayer>(shared_from_this(),Stonecolor::Black);
    _black_player = std::make_shared<HumanPlayer>(shared_from_this(),Stonecolor::White);
  }

  void
  Engine::newGameVsAi(Size size) {

    _board.resetBoard(size);

    _game_mode = GameMode::VsAi;
    _active_game = true;

    _white_player = std::make_shared<HumanPlayer>(shared_from_this(),Stonecolor::Black);
    _black_player = std::make_shared<RandomAi>(shared_from_this(),   Stonecolor::White);
  }

  void
  Engine::newGameAiVsAi(Size size) {

    _board.resetBoard(size);

    _game_mode = GameMode::Ai;
    _active_game = true;

    _white_player = std::make_shared<RandomAi>(shared_from_this(),Stonecolor::Black);
    _black_player = std::make_shared<RandomAi>(shared_from_this(),Stonecolor::White);
  }

  void
  Engine::newGameFromState(Board::BoardData&& board, Stonecolor turn, bool was_previous_pass) {

    _board = Board {std::forward<Board::BoardData>(board),turn,was_previous_pass};

    _game_mode = GameMode::VsPlayer;
    _active_game = true;
    _white_player = std::make_shared<HumanPlayer>(shared_from_this(),Stonecolor::Black);
    _black_player = std::make_shared<HumanPlayer>(shared_from_this(),Stonecolor::White);
  }

  const Board&
  Engine::board() const {

    return _board;
  }

  const GameMode&
  Engine::gameMode() const {

    return _game_mode;
  }

  Stonecolor
  Engine::turn() const {

    return _board.turn();
  }

  const std::shared_ptr<Player>
  Engine::currentPlayer() const {

    if(      turn() == Stonecolor::Black ) return _black_player;
    else if( turn() == Stonecolor::White ) return _white_player;
    else                              return nullptr;
  }

  void
  Engine::placeStone(Point intersection) {

    _board.placeStone(intersection);
  }

  void
  Engine::passTurn() {

    if(board().wasPreviousPass()) {
      _active_game = false;
      return;
    }

    _board.passTurn();
  }

  void
  Engine::nextTurn(std::chrono::duration<int,std::milli> think_time) {

    if( currentPlayer()->type() != PlayerType::Ai) return;

    auto p = std::static_pointer_cast<AiPlayer>(currentPlayer());

    p->think( think_time );
    if( p->nextMove() == AiPlayer::Move::PlaceStone )
      placeStone( p->nextStone() );
    else
      passTurn();
  }

  bool
  Engine::isGameActive() const {

    return _active_game;
  }

  bool
  Engine::validateStone(Point pos) const {

      return _board.isNextPositionValid(pos);
  }

  bool
  Engine::hasStone(Point intersection) const {
      return _board.hasStone(intersection);
  }


} // END namespace go
} // END namespace mylib
