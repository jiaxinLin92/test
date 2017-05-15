project(client VERSION 1.0)

# Find Qt
find_package(Qt5Core 5.1)
find_package(Qt5Quick 5.1)
find_package(Qt5Gui 5.1)



set(HDRS
  boardmodel.h
  guiapplication.cpp
)

# List source files
set(SRCS
  goenginemodel.cpp
  client.cpp
  guiapplication.cpp
)



# Qt MOC
QT5_WRAP_CPP( HDRS_MOC
  goenginemodel.h
  guiapplication.h
)




# List Qt resource files
set( RCCS
  resources/qml.qrc )

QT5_ADD_RESOURCES( RCCS_MOC ${RCCS} )




# Add rules to create an executable
add_executable(${PROJECT_NAME} ${SRCS} ${HDRS_MOC} ${RCCS_MOC} )

# Tell the compiler to use the our compile flags
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_FLAGS ${MY_COMPILE_FLAGS})

# Link our target executable with the libraries we use
target_link_libraries(${PROJECT_NAME}
  mylibrary
  Qt5::Core
  Qt5::Quick
  Qt5::Gui
)

