cmake_minimum_required(VERSION 3.29)
project(SteamTable_Thermodynamics_APP)

set(CMAKE_CXX_STANDARD 14)

include_directories(App)

add_executable(SteamTable_Thermodynamics_APP
        App/Main.cpp
        App/Main.h
    .gitattributes
    LICENSE
    README.md)
