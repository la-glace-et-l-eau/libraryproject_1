cmake_minimum_required(VERSION 3.14)

project(libraryprojectTests LANGUAGES CXX)

include(../cmake/project-is-top-level.cmake)
include(../cmake/folders.cmake)

# ---- Dependencies ----

if(PROJECT_IS_TOP_LEVEL)
  find_package(libraryproject REQUIRED)
  enable_testing()
endif()

find_package(Catch2 REQUIRED)
include(Catch)

# ---- Tests ----

add_executable(libraryproject_test source/libraryproject_test.cpp)
target_link_libraries(
    libraryproject_test PRIVATE
    libraryproject::libraryproject
    Catch2::Catch2WithMain
)
target_compile_features(libraryproject_test PRIVATE cxx_std_20)

catch_discover_tests(libraryproject_test)

# ---- End-of-file commands ----

add_folders(Test)
