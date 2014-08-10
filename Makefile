
CC = g++
CFLAGS = -g
CXXFLAGS = -g
LINK = -lboost_date_time -lboost_system -lboost_thread-mt

BIN_DIR = bin
SRC_DIR = src
OBJ_DIR = object

PROGS = ${BIN_DIR}/boost_asio_server.out
#OBJ = ${OBJ_DIR}/

all : ${PROGS}

${BIN_DIR}/boost_asio_server.out : ${SRC_DIR}/boost_asio_server.cpp
	${CC} ${CXXFLAGS} ${LINK} ${SRC_DIR}/boost_asio_server.cpp -o ${BIN_DIR}/boost_asio_server.out

.PHONY : all clean

clean:
	-rm -rf ${PROGS}
#	-rm -rf	${OBJ_DIR}/*  ${PROGS}

