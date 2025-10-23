################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.c 

OBJS += \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/sw/%.o Middlewares/lvgl/src/draw/sw/%.su Middlewares/lvgl/src/draw/sw/%.cyclo: ../Middlewares/lvgl/src/draw/sw/%.c Middlewares/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_blend.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_dither.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_gradient.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_layer.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_polygon.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_rect.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw

