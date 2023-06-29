include(FetchContent)

set(SEAL_BUILD_DEPS ON)
set(SEAL_USE_MSGSL ON)

FetchContent_Declare(
  com_microsoft_seal
  GIT_REPOSITORY https://github.com/inaccel/SEAL
  GIT_TAG        v4.0.0-xcl2 #v4.0.0-xcl2
)
FetchContent_MakeAvailable(com_microsoft_seal)

include_directories(${com_microsoft_seal_SOURCE_DIR}/native/src)
include_directories(${com_microsoft_seal_SOURCE_DIR}/thirdparty/msgsl-src/include/)
include_directories(${com_microsoft_seal_SOURCE_DIR}/thirdparty/hexl-src/hexl/include/)
include_directories(${com_microsoft_seal_BINARY_DIR}/native/src)
