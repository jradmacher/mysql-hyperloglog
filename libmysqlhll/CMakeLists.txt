IF (WIN32)
  set(MYSQL_INCLUDE_DIR "C:\\Program Files\\MySQL\\MySQL Server 5.6\\include\\" CACHE STRING "MySQL include directory")
ELSE()
  set(MYSQL_INCLUDE_DIR "/usr/include/mysql" CACHE STRING "MySQL include directory")
ENDIF()

include_directories (${MYSQLHLL_SOURCE_DIR}/libmysqlhll/cpp-hyperloglog/include ${MYSQLHLL_SOURCE_DIR}/libmysqlhll/base64 ${MYSQL_INCLUDE_DIR}) 

add_library (mysqlhll SHARED mysqlhll.cxx)
install(TARGETS mysqlhll LIBRARY DESTINATION lib/mysql/plugin)
