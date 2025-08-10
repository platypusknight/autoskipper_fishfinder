find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_SONAR_PROCESSING gnuradio-sonar_processing)

FIND_PATH(
    GR_SONAR_PROCESSING_INCLUDE_DIRS
    NAMES gnuradio/sonar_processing/api.h
    HINTS $ENV{SONAR_PROCESSING_DIR}/include
        ${PC_SONAR_PROCESSING_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_SONAR_PROCESSING_LIBRARIES
    NAMES gnuradio-sonar_processing
    HINTS $ENV{SONAR_PROCESSING_DIR}/lib
        ${PC_SONAR_PROCESSING_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-sonar_processingTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_SONAR_PROCESSING DEFAULT_MSG GR_SONAR_PROCESSING_LIBRARIES GR_SONAR_PROCESSING_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_SONAR_PROCESSING_LIBRARIES GR_SONAR_PROCESSING_INCLUDE_DIRS)
