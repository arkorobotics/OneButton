include(CMakeForceCompiler)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_FLAGS "-Wall -Werror -ffunction-sections -fdata-sections -fno-exceptions -mthumb -gdwarf-2 -pipe -DHSI_VALUE=48000000 -mcpu=cortex-m0 -DSTM32PLUS_F0_42 -O3" CACHE INTERNAL "c compiler flags")
set(CMAKE_CXX_FLAGS "-Wall -Werror -ffunction-sections -fdata-sections -fno-exceptions -mthumb -gdwarf-2 -pipe -DHSI_VALUE=48000000 -mcpu=cortex-m0 -DSTM32PLUS_F0_42 -O3 -Wextra -pedantic-errors -fno-rtti -std=gnu++0x -fno-threadsafe-statics" CACHE INTERNAL "cxx compiler flags")
set(CMAKE_ASM_FLAGS "-mcpu=cortex-m0" CACHE INTERNAL "asm compiler flags")

set(CMAKE_EXE_LINKER_FLAGS "-Xlinker --gc-sections -mthumb -g3 -gdwarf-2 -mcpu=cortex-m0" CACHE INTERNAL "executable linker flags")
set(CMAKE_MODULE_LINKER_FLAGS "-Xlinker --gc-sections -mthumb -g3 -gdwarf-2 -mcpu=cortex-m0" CACHE INTERNAL "module linker flags")
set(CMAKE_SHARED_LINKER_FLAGS "-Xlinker --gc-sections -mthumb -g3 -gdwarf-2 -mcpu=cortex-m0" CACHE INTERNAL "shared linker flags")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-wrap,__aeabi_unwind_cpp_pr0 -Wl,-wrap,__aeabi_unwind_cpp_pr1 -Wl,-wrap,__aeabi_unwind_cpp_pr2")

cmake_force_c_compiler(arm-none-eabi-gcc GNU)
cmake_force_cxx_compiler(arm-none-eabi-g++ GNU)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
set(CMAKE_OBJCOPY arm-none-eabi-objcopy CACHE INTERNAL "objcopy tool")
set(CMAKE_OBJDUMP arm-none-eabi-objdump CACHE INTERNAL "objdump tool")

get_filename_component(INSTALLDIR "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
message(STATUS "Using stm32plus install: ${INSTALLDIR}")
message(STATUS "Using stm32plus prefix:  stm32plus-040100")
add_definitions("-DSTM32PLUS_BUILD")

set(STM32PLUS_INSTALLDIR "${INSTALLDIR}" CACHE INTERNAL "stm32plus installdir")
set(STM32PLUS_LIBS "${INSTALLDIR}/lib/stm32plus-040100/libstm32plus-fast-f042-48000000i.a" CACHE INTERNAL "library location")

# These paths cover your bases if you're using pure stm32plus interfaces.
set(STM32PLUS_INCLUDE_DIRS
  ${INSTALLDIR}/include/stm32plus-040100/
  ${INSTALLDIR}/include/stm32plus-040100/stl)

# You'll need include paths under here if you're calling into stdperiph or cmsis directly.
set(STM32PLUS_FWLIB_DIR ${INSTALLDIR}/include/stm32plus-040100/fwlib)

function(add_bin_target TARGET)
  if(EXECUTABLE_OUTPUT_PATH)
		set(FILENAME "${EXECUTABLE_OUTPUT_PATH}/${TARGET}")
  else()
	  set(FILENAME "${TARGET}")
	endif()
	add_custom_target(${TARGET}.bin COMMAND ${CMAKE_OBJCOPY} -Obinary ${FILENAME} ${FILENAME}.bin)
	add_dependencies(${TARGET}.bin ${TARGET})
endfunction()
