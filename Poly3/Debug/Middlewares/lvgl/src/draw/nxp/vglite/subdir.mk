################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/nxp/vglite/%.o Middlewares/lvgl/src/draw/nxp/vglite/%.su Middlewares/lvgl/src/draw/nxp/vglite/%.cyclo: ../Middlewares/lvgl/src/draw/nxp/vglite/%.c Middlewares/lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

