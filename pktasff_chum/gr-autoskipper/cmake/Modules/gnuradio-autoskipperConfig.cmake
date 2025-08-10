find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_AUTOSKIPPER gnuradio-autoskipper)

FIND_PATH(
    GR_AUTOSKIPPER_INCLUDE_DIRS
    NAMES gnuradio/autoskipper/api.h
    HINTS $ENV{AUTOSKIPPER_DIR}/include
        ${PC_AUTOSKIPPER_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_AUTOSKIPPER_LIBRARIES
    NAMES gnuradio-autoskipper
    HINTS $ENV{AUTOSKIPPER_DIR}/lib
        ${PC_AUTOSKIPPER_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-autoskipperTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_AUTOSKIPPER DEFAULT_MSG GR_AUTOSKIPPER_LIBRARIES GR_AUTOSKIPPER_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_AUTOSKIPPER_LIBRARIES GR_AUTOSKIPPER_INCLUDE_DIRS)
