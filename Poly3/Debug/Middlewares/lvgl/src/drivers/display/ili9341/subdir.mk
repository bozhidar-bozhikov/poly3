################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.c 

OBJS += \
./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.o 

C_DEPS += \
./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/drivers/display/ili9341/%.o Middlewares/lvgl/src/drivers/display/ili9341/%.su Middlewares/lvgl/src/drivers/display/ili9341/%.cyclo: ../Middlewares/lvgl/src/drivers/display/ili9341/%.c Middlewares/lvgl/src/drivers/display/ili9341/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares/ST7789" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341

clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341:
	-$(RM) ./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.cyclo ./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.d ./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.o ./Middlewares/lvgl/src/drivers/display/ili9341/lv_ili9341.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ili9341

