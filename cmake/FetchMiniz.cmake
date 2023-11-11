# Fetch miniz source code from Github

include(FetchContent)

FetchContent_Declare(
  miniz
  GIT_REPOSITORY https://github.com/richgel999/miniz
  GIT_TAG        master
)

FetchContent_MakeAvailable(miniz)

message("Fetched miniz source code from Github: ${miniz_SOURCE_DIR}")
include_directories(
  ${miniz_SOURCE_DIR}
  ${miniz_BINARY_DIR}
)

# set(MINIZ_SOURCE_URL
#         "https://github.com/richgel999/miniz")
# 
# set(MINIZ_CMAKE_ARGS        "-DCMAKE_PREFIX_PATH=${CMAKE_BINARY_DIR}/thirdparty"
#                             "-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/thirdparty"
#                             "-DCMAKE_CXX_FLAGS=-D_GLIBCXX_USE_CXX11_ABI=0"
#                             "-DCMAKE_BUILD_TYPE=Release")
# 
# ExternalProject_Add(miniz_ep
#     GIT_REPOSITORY          ${MINIZ_SOURCE_URL}
#     GIT_TAG                 master
#     CMAKE_ARGS              ${MINIZ_CMAKE_ARGS}
# )