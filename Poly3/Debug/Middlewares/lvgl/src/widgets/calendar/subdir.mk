################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.c 

OBJS += \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o 

C_DEPS += \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/widgets/calendar/%.o Middlewares/lvgl/src/widgets/calendar/%.su Middlewares/lvgl/src/widgets/calendar/%.cyclo: ../Middlewares/lvgl/src/widgets/calendar/%.c Middlewares/lvgl/src/widgets/calendar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares/ST7789" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar

clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar:
	-$(RM) ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar

