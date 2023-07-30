TEMPLATE = app
TARGET = TubeFetchr

SOURCES += src/main.cpp src/backend.cpp
HEADERS += include/backend.hpp
RESOURCES = resources.qrc
DESTDIR = ./build/

QT += core gui qml

QMAKE_CC = clang
QMAKE_CXX = clang++
QMAKE_LINK = clang++
QMAKE_CFLAGS += -Wall -Wextra
QMAKE_CXXFLAGS += -std=gnu++2b
