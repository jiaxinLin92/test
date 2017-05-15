
#include "guiapplication.h"

// qt
#include <QGuiApplication>
#include <QQuickView>
#include <QDebug>

// stl
#include <iostream>
#include <stdexcept>

int main(int argc, char** argv) try {

  GuiApplication a(argc,argv);
  return a.exec();

}
catch(const std::exception& e){
  std::cerr << "An exception occurred: " << e.what() << std::endl;
}
catch(...) {
  std::cerr << "Unknown exception thrown!" << std::endl;
}
