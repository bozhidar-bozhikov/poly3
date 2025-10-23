################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/others/test/lv_test_display.c \
../Middlewares/lvgl/src/others/test/lv_test_helpers.c \
../Middlewares/lvgl/src/others/test/lv_test_indev.c \
../Middlewares/lvgl/src/others/test/lv_test_indev_gesture.c \
../Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.c 

OBJS += \
./Middlewares/lvgl/src/others/test/lv_test_display.o \
./Middlewares/lvgl/src/others/test/lv_test_helpers.o \
./Middlewares/lvgl/src/others/test/lv_test_indev.o \
./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.o \
./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.o 

C_DEPS += \
./Middlewares/lvgl/src/others/test/lv_test_display.d \
./Middlewares/lvgl/src/others/test/lv_test_helpers.d \
./Middlewares/lvgl/src/others/test/lv_test_indev.d \
./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.d \
./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/others/test/%.o Middlewares/lvgl/src/others/test/%.su Middlewares/lvgl/src/others/test/%.cyclo: ../Middlewares/lvgl/src/others/test/%.c Middlewares/lvgl/src/others/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares/ST7789" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test

clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test:
	-$(RM) ./Middlewares/lvgl/src/others/test/lv_test_display.cyclo ./Middlewares/lvgl/src/others/test/lv_test_display.d ./Middlewares/lvgl/src/others/test/lv_test_display.o ./Middlewares/lvgl/src/others/test/lv_test_display.su ./Middlewares/lvgl/src/others/test/lv_test_helpers.cyclo ./Middlewares/lvgl/src/others/test/lv_test_helpers.d ./Middlewares/lvgl/src/others/test/lv_test_helpers.o ./Middlewares/lvgl/src/others/test/lv_test_helpers.su ./Middlewares/lvgl/src/others/test/lv_test_indev.cyclo ./Middlewares/lvgl/src/others/test/lv_test_indev.d ./Middlewares/lvgl/src/others/test/lv_test_indev.o ./Middlewares/lvgl/src/others/test/lv_test_indev.su ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.cyclo ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.d ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.o ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.su ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.cyclo ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.d ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.o ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test

