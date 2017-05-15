#ifndef GO_H
#define GO_H



//stl
#include <map>
#include <memory>
#include <utility>
#include <chrono>
//#include <vector>

namespace mylib {

namespace go {



  class Board;
  struct GameState;
  class Player;
  class AiPlayer;
  class HumanPlayer;
  class Engine;


  using time_type = std::chrono::duration<int,std::milli>;

  constexpr time_type operator"" _ms (unsigned long long int milli) { return time_type(milli); }
  constexpr time_type operator"" _s  (unsigned long long int sec)   { return time_type(sec*1000); }


  enum class Stonecolor{
      White     =0,
      Black     =1
  };
// enum class stonecolor_color {
//      White,Black
//  };
  enum class PlayerType {
    Human       = 0,
    Ai          = 1
  };

  enum class GameMode {
    VsPlayer    = 0,
    VsAi        = 1,
    Ai          = 2
  };

  using Point   = std::pair<int,int>;
  using Size    = std::pair<int,int>;

  // INVARIANTS:
  //   Board fullfills; what does one need to know in order to consider a given position.
  //   * all stones and their position on the board
  //   * who places the next stonecolor
  //   * was last move a pass move
  //   * meta: block and freedoms

  namespace priv {


    class Board_base {
    public:
      using BoardData = std::map<Point,Stonecolor>;
      using freedomchecked = std::map<Point,bool>;//检查棋子的气（check the freedom of stone）
      using sharedblockchecked = std::map<Point,bool>;//检查一片棋子的气（check the freedom of a block stones）
      using Freedom = std::map<Point,int>;//计算气 caculate the freedom
      using hasPreStone=std::map<Point,bool>;//上一步
      struct Position {
        BoardData               board;
        freedomchecked          freedomchecked;    //position中属性——检查气
        sharedblockchecked      sharedblockchecked; //position中属性——检查一片棋子的气
        Freedom                 freedom; //position中属性——计算气

        Stonecolor              turn;
        bool                    was_previous_pass;
        bool                    hasPreStone;

//        bool                    hasStone();

        Position () = default;
        explicit Position ( BoardData&& data, Stonecolor turn, bool was_previous_pass);

      }; // END class Position


      // Constructors
      Board_base() = default;
      explicit Board_base( Size size );
      explicit Board_base( BoardData&& data, Stonecolor turn, bool was_previous_pass );

      // Board data
      Size             size() const;
      bool             wasPreviousPass() const;
      Stonecolor            turn() const;

      // Board
      void             resetBoard( Size size );

      // Board
      Size             _size;
      Position         _current;
      int              _freedom; // 定义属性为 int型的 气
      Point            _kostone_w;//white
      Point            _kostone_b;//

    }; // END base class Board_base



  } // END "private" namespace priv

  class Board : private priv::Board_base {
  public:
    // Enable types
    using Board_base::BoardData;

    using Board_base::Position;

    // Enable constructors
    using Board_base::Board_base;

    // Make visible from Board_base
    using Board_base::resetBoard;
    using Board_base::size;
    using Board_base::wasPreviousPass;
    using Board_base::turn;


    // Validate
    bool                  isNextPositionValid( Point intersection ) const;

    // Actions
    void                  placeStone( Point intersection );
    void                  calculateFreedom(Point intersection); //函数计算每个子的气
    void                  calculateBaseFreedom();//函数递归出一片子的气
    int                   calculateFreedomBase(Point intersection);//函数存储气数便于调用
    void                  removeStone();//函数 吃子
    void                  cleverStone();//   防止自杀行为

    void                  passTurn();
    bool                  checkcolor();

    void                  calculateScore();//

    // Stones and positions
    bool                  hasStone( Point intersection ) const;
    Stonecolor                 stone( Point intersection ) const;
    bool                  kostone(Point intersection) const;//打劫
    void                  saveprecious(Point intersection);//save


  }; // END class Board

  class Engine : public std::enable_shared_from_this<Engine> {
  public:
    Engine();

    void                            newGame( Size size );
    void                            newGameVsAi( Size size );
    void                            newGameAiVsAi( Size size );
    void                            newGameFromState( Board::BoardData&& board, Stonecolor turn,
                                                      bool was_previous_pass );

    const Board&                    board() const;

    Stonecolor                           turn() const;
    bool                            hasStone(Point intersection) const;
    const GameMode&                 gameMode() const;
    const std::shared_ptr<Player>   currentPlayer() const;

    void                            placeStone( Point intersection );
    bool                            validateStone( Point intersection ) const;
    void                            passTurn();

    void                            nextTurn( time_type think_time = 100_ms );
    bool                            isGameActive() const;


  private:
    Board                           _board;

    GameMode                        _game_mode;
    bool                            _active_game;

    std::shared_ptr<Player>         _white_player;
    std::shared_ptr<Player>         _black_player;

  }; // END class Engine

} // END namespace go

} // END namespace mylib

#endif //GO_H
