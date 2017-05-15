# Set a project name an version number for the 2nd benchmark program
project(benchmark_01 VERSION 1.0)

# List source files
set(SRCS
  benchmark_01.cpp
)

# Add rules to create a library
add_executable(${PROJECT_NAME} ${SRCS})

# Tell the compiler to use the our compile flags
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_FLAGS ${MY_COMPILE_FLAGS})

# Link our target executable with the libraries we use
target_link_libraries(${PROJECT_NAME} mylibrary)

