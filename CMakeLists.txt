cmake_minimum_required(VERSION 3.0)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

project(yt-playlist-bgm-player)

add_subdirectory(deps/ytdl)

add_executable(
    bgmplayer
    src/main.cpp
    src/Player.cpp
    src/CommonMethods.cpp
)

target_link_libraries(bgmplayer PRIVATE ytdlcore ytdlhttp)
