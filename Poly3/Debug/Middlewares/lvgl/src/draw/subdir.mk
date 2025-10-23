################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/lv_draw.c \
../Middlewares/lvgl/src/draw/lv_draw_arc.c \
../Middlewares/lvgl/src/draw/lv_draw_img.c \
../Middlewares/lvgl/src/draw/lv_draw_label.c \
../Middlewares/lvgl/src/draw/lv_draw_layer.c \
../Middlewares/lvgl/src/draw/lv_draw_line.c \
../Middlewares/lvgl/src/draw/lv_draw_mask.c \
../Middlewares/lvgl/src/draw/lv_draw_rect.c \
../Middlewares/lvgl/src/draw/lv_draw_transform.c \
../Middlewares/lvgl/src/draw/lv_draw_triangle.c \
../Middlewares/lvgl/src/draw/lv_img_buf.c \
../Middlewares/lvgl/src/draw/lv_img_cache.c \
../Middlewares/lvgl/src/draw/lv_img_decoder.c 

OBJS += \
./Middlewares/lvgl/src/draw/lv_draw.o \
./Middlewares/lvgl/src/draw/lv_draw_arc.o \
./Middlewares/lvgl/src/draw/lv_draw_img.o \
./Middlewares/lvgl/src/draw/lv_draw_label.o \
./Middlewares/lvgl/src/draw/lv_draw_layer.o \
./Middlewares/lvgl/src/draw/lv_draw_line.o \
./Middlewares/lvgl/src/draw/lv_draw_mask.o \
./Middlewares/lvgl/src/draw/lv_draw_rect.o \
./Middlewares/lvgl/src/draw/lv_draw_transform.o \
./Middlewares/lvgl/src/draw/lv_draw_triangle.o \
./Middlewares/lvgl/src/draw/lv_img_buf.o \
./Middlewares/lvgl/src/draw/lv_img_cache.o \
./Middlewares/lvgl/src/draw/lv_img_decoder.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/lv_draw.d \
./Middlewares/lvgl/src/draw/lv_draw_arc.d \
./Middlewares/lvgl/src/draw/lv_draw_img.d \
./Middlewares/lvgl/src/draw/lv_draw_label.d \
./Middlewares/lvgl/src/draw/lv_draw_layer.d \
./Middlewares/lvgl/src/draw/lv_draw_line.d \
./Middlewares/lvgl/src/draw/lv_draw_mask.d \
./Middlewares/lvgl/src/draw/lv_draw_rect.d \
./Middlewares/lvgl/src/draw/lv_draw_transform.d \
./Middlewares/lvgl/src/draw/lv_draw_triangle.d \
./Middlewares/lvgl/src/draw/lv_img_buf.d \
./Middlewares/lvgl/src/draw/lv_img_cache.d \
./Middlewares/lvgl/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/%.o Middlewares/lvgl/src/draw/%.su Middlewares/lvgl/src/draw/%.cyclo: ../Middlewares/lvgl/src/draw/%.c Middlewares/lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw

clean-Middlewares-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./Middlewares/lvgl/src/draw/lv_draw.cyclo ./Middlewares/lvgl/src/draw/lv_draw.d ./Middlewares/lvgl/src/draw/lv_draw.o ./Middlewares/lvgl/src/draw/lv_draw.su ./Middlewares/lvgl/src/draw/lv_draw_arc.cyclo ./Middlewares/lvgl/src/draw/lv_draw_arc.d ./Middlewares/lvgl/src/draw/lv_draw_arc.o ./Middlewares/lvgl/src/draw/lv_draw_arc.su ./Middlewares/lvgl/src/draw/lv_draw_img.cyclo ./Middlewares/lvgl/src/draw/lv_draw_img.d ./Middlewares/lvgl/src/draw/lv_draw_img.o ./Middlewares/lvgl/src/draw/lv_draw_img.su ./Middlewares/lvgl/src/draw/lv_draw_label.cyclo ./Middlewares/lvgl/src/draw/lv_draw_label.d ./Middlewares/lvgl/src/draw/lv_draw_label.o ./Middlewares/lvgl/src/draw/lv_draw_label.su ./Middlewares/lvgl/src/draw/lv_draw_layer.cyclo ./Middlewares/lvgl/src/draw/lv_draw_layer.d ./Middlewares/lvgl/src/draw/lv_draw_layer.o ./Middlewares/lvgl/src/draw/lv_draw_layer.su ./Middlewares/lvgl/src/draw/lv_draw_line.cyclo ./Middlewares/lvgl/src/draw/lv_draw_line.d ./Middlewares/lvgl/src/draw/lv_draw_line.o ./Middlewares/lvgl/src/draw/lv_draw_line.su ./Middlewares/lvgl/src/draw/lv_draw_mask.cyclo ./Middlewares/lvgl/src/draw/lv_draw_mask.d ./Middlewares/lvgl/src/draw/lv_draw_mask.o ./Middlewares/lvgl/src/draw/lv_draw_mask.su ./Middlewares/lvgl/src/draw/lv_draw_rect.cyclo ./Middlewares/lvgl/src/draw/lv_draw_rect.d ./Middlewares/lvgl/src/draw/lv_draw_rect.o ./Middlewares/lvgl/src/draw/lv_draw_rect.su ./Middlewares/lvgl/src/draw/lv_draw_transform.cyclo ./Middlewares/lvgl/src/draw/lv_draw_transform.d ./Middlewares/lvgl/src/draw/lv_draw_transform.o ./Middlewares/lvgl/src/draw/lv_draw_transform.su ./Middlewares/lvgl/src/draw/lv_draw_triangle.cyclo ./Middlewares/lvgl/src/draw/lv_draw_triangle.d ./Middlewares/lvgl/src/draw/lv_draw_triangle.o ./Middlewares/lvgl/src/draw/lv_draw_triangle.su ./Middlewares/lvgl/src/draw/lv_img_buf.cyclo ./Middlewares/lvgl/src/draw/lv_img_buf.d ./Middlewares/lvgl/src/draw/lv_img_buf.o ./Middlewares/lvgl/src/draw/lv_img_buf.su ./Middlewares/lvgl/src/draw/lv_img_cache.cyclo ./Middlewares/lvgl/src/draw/lv_img_cache.d ./Middlewares/lvgl/src/draw/lv_img_cache.o ./Middlewares/lvgl/src/draw/lv_img_cache.su ./Middlewares/lvgl/src/draw/lv_img_decoder.cyclo ./Middlewares/lvgl/src/draw/lv_img_decoder.d ./Middlewares/lvgl/src/draw/lv_img_decoder.o ./Middlewares/lvgl/src/draw/lv_img_decoder.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw

