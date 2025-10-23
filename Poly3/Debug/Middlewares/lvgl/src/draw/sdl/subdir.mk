################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c \
../Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.c 

OBJS += \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d \
./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/sdl/%.o Middlewares/lvgl/src/draw/sdl/%.su Middlewares/lvgl/src/draw/sdl/%.cyclo: ../Middlewares/lvgl/src/draw/sdl/%.c Middlewares/lvgl/src/draw/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sdl

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sdl:
	-$(RM) ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_arc.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_bg.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_composite.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_img.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_label.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_layer.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_line.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_mask.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_polygon.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_rect.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.su ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.cyclo ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.d ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.o ./Middlewares/lvgl/src/draw/sdl/lv_draw_sdl_utils.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sdl

