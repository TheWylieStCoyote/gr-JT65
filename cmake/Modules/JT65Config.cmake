INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_JT65 JT65)

FIND_PATH(
    JT65_INCLUDE_DIRS
    NAMES JT65/api.h
    HINTS $ENV{JT65_DIR}/include
        ${PC_JT65_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    JT65_LIBRARIES
    NAMES gnuradio-JT65
    HINTS $ENV{JT65_DIR}/lib
        ${PC_JT65_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(JT65 DEFAULT_MSG JT65_LIBRARIES JT65_INCLUDE_DIRS)
MARK_AS_ADVANCED(JT65_LIBRARIES JT65_INCLUDE_DIRS)

