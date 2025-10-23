################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/hal/lv_hal_disp.c \
../Middlewares/lvgl/src/hal/lv_hal_indev.c \
../Middlewares/lvgl/src/hal/lv_hal_tick.c 

OBJS += \
./Middlewares/lvgl/src/hal/lv_hal_disp.o \
./Middlewares/lvgl/src/hal/lv_hal_indev.o \
./Middlewares/lvgl/src/hal/lv_hal_tick.o 

C_DEPS += \
./Middlewares/lvgl/src/hal/lv_hal_disp.d \
./Middlewares/lvgl/src/hal/lv_hal_indev.d \
./Middlewares/lvgl/src/hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/hal/%.o Middlewares/lvgl/src/hal/%.su Middlewares/lvgl/src/hal/%.cyclo: ../Middlewares/lvgl/src/hal/%.c Middlewares/lvgl/src/hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-hal

clean-Middlewares-2f-lvgl-2f-src-2f-hal:
	-$(RM) ./Middlewares/lvgl/src/hal/lv_hal_disp.cyclo ./Middlewares/lvgl/src/hal/lv_hal_disp.d ./Middlewares/lvgl/src/hal/lv_hal_disp.o ./Middlewares/lvgl/src/hal/lv_hal_disp.su ./Middlewares/lvgl/src/hal/lv_hal_indev.cyclo ./Middlewares/lvgl/src/hal/lv_hal_indev.d ./Middlewares/lvgl/src/hal/lv_hal_indev.o ./Middlewares/lvgl/src/hal/lv_hal_indev.su ./Middlewares/lvgl/src/hal/lv_hal_tick.cyclo ./Middlewares/lvgl/src/hal/lv_hal_tick.d ./Middlewares/lvgl/src/hal/lv_hal_tick.o ./Middlewares/lvgl/src/hal/lv_hal_tick.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-hal

