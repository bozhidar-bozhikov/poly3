################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/others/font_manager/lv_font_manager.c \
../Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.c 

OBJS += \
./Middlewares/lvgl/src/others/font_manager/lv_font_manager.o \
./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.o 

C_DEPS += \
./Middlewares/lvgl/src/others/font_manager/lv_font_manager.d \
./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/others/font_manager/%.o Middlewares/lvgl/src/others/font_manager/%.su Middlewares/lvgl/src/others/font_manager/%.cyclo: ../Middlewares/lvgl/src/others/font_manager/%.c Middlewares/lvgl/src/others/font_manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares/ST7789" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-font_manager

clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-font_manager:
	-$(RM) ./Middlewares/lvgl/src/others/font_manager/lv_font_manager.cyclo ./Middlewares/lvgl/src/others/font_manager/lv_font_manager.d ./Middlewares/lvgl/src/others/font_manager/lv_font_manager.o ./Middlewares/lvgl/src/others/font_manager/lv_font_manager.su ./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.cyclo ./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.d ./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.o ./Middlewares/lvgl/src/others/font_manager/lv_font_manager_recycle.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-font_manager

