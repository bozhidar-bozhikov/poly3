################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/widgets/lv_arc.c \
../Middlewares/lvgl/src/widgets/lv_bar.c \
../Middlewares/lvgl/src/widgets/lv_btn.c \
../Middlewares/lvgl/src/widgets/lv_btnmatrix.c \
../Middlewares/lvgl/src/widgets/lv_canvas.c \
../Middlewares/lvgl/src/widgets/lv_checkbox.c \
../Middlewares/lvgl/src/widgets/lv_dropdown.c \
../Middlewares/lvgl/src/widgets/lv_img.c \
../Middlewares/lvgl/src/widgets/lv_label.c \
../Middlewares/lvgl/src/widgets/lv_line.c \
../Middlewares/lvgl/src/widgets/lv_objx_templ.c \
../Middlewares/lvgl/src/widgets/lv_roller.c \
../Middlewares/lvgl/src/widgets/lv_slider.c \
../Middlewares/lvgl/src/widgets/lv_switch.c \
../Middlewares/lvgl/src/widgets/lv_table.c \
../Middlewares/lvgl/src/widgets/lv_textarea.c 

OBJS += \
./Middlewares/lvgl/src/widgets/lv_arc.o \
./Middlewares/lvgl/src/widgets/lv_bar.o \
./Middlewares/lvgl/src/widgets/lv_btn.o \
./Middlewares/lvgl/src/widgets/lv_btnmatrix.o \
./Middlewares/lvgl/src/widgets/lv_canvas.o \
./Middlewares/lvgl/src/widgets/lv_checkbox.o \
./Middlewares/lvgl/src/widgets/lv_dropdown.o \
./Middlewares/lvgl/src/widgets/lv_img.o \
./Middlewares/lvgl/src/widgets/lv_label.o \
./Middlewares/lvgl/src/widgets/lv_line.o \
./Middlewares/lvgl/src/widgets/lv_objx_templ.o \
./Middlewares/lvgl/src/widgets/lv_roller.o \
./Middlewares/lvgl/src/widgets/lv_slider.o \
./Middlewares/lvgl/src/widgets/lv_switch.o \
./Middlewares/lvgl/src/widgets/lv_table.o \
./Middlewares/lvgl/src/widgets/lv_textarea.o 

C_DEPS += \
./Middlewares/lvgl/src/widgets/lv_arc.d \
./Middlewares/lvgl/src/widgets/lv_bar.d \
./Middlewares/lvgl/src/widgets/lv_btn.d \
./Middlewares/lvgl/src/widgets/lv_btnmatrix.d \
./Middlewares/lvgl/src/widgets/lv_canvas.d \
./Middlewares/lvgl/src/widgets/lv_checkbox.d \
./Middlewares/lvgl/src/widgets/lv_dropdown.d \
./Middlewares/lvgl/src/widgets/lv_img.d \
./Middlewares/lvgl/src/widgets/lv_label.d \
./Middlewares/lvgl/src/widgets/lv_line.d \
./Middlewares/lvgl/src/widgets/lv_objx_templ.d \
./Middlewares/lvgl/src/widgets/lv_roller.d \
./Middlewares/lvgl/src/widgets/lv_slider.d \
./Middlewares/lvgl/src/widgets/lv_switch.d \
./Middlewares/lvgl/src/widgets/lv_table.d \
./Middlewares/lvgl/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/widgets/%.o Middlewares/lvgl/src/widgets/%.su Middlewares/lvgl/src/widgets/%.cyclo: ../Middlewares/lvgl/src/widgets/%.c Middlewares/lvgl/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-widgets

clean-Middlewares-2f-lvgl-2f-src-2f-widgets:
	-$(RM) ./Middlewares/lvgl/src/widgets/lv_arc.cyclo ./Middlewares/lvgl/src/widgets/lv_arc.d ./Middlewares/lvgl/src/widgets/lv_arc.o ./Middlewares/lvgl/src/widgets/lv_arc.su ./Middlewares/lvgl/src/widgets/lv_bar.cyclo ./Middlewares/lvgl/src/widgets/lv_bar.d ./Middlewares/lvgl/src/widgets/lv_bar.o ./Middlewares/lvgl/src/widgets/lv_bar.su ./Middlewares/lvgl/src/widgets/lv_btn.cyclo ./Middlewares/lvgl/src/widgets/lv_btn.d ./Middlewares/lvgl/src/widgets/lv_btn.o ./Middlewares/lvgl/src/widgets/lv_btn.su ./Middlewares/lvgl/src/widgets/lv_btnmatrix.cyclo ./Middlewares/lvgl/src/widgets/lv_btnmatrix.d ./Middlewares/lvgl/src/widgets/lv_btnmatrix.o ./Middlewares/lvgl/src/widgets/lv_btnmatrix.su ./Middlewares/lvgl/src/widgets/lv_canvas.cyclo ./Middlewares/lvgl/src/widgets/lv_canvas.d ./Middlewares/lvgl/src/widgets/lv_canvas.o ./Middlewares/lvgl/src/widgets/lv_canvas.su ./Middlewares/lvgl/src/widgets/lv_checkbox.cyclo ./Middlewares/lvgl/src/widgets/lv_checkbox.d ./Middlewares/lvgl/src/widgets/lv_checkbox.o ./Middlewares/lvgl/src/widgets/lv_checkbox.su ./Middlewares/lvgl/src/widgets/lv_dropdown.cyclo ./Middlewares/lvgl/src/widgets/lv_dropdown.d ./Middlewares/lvgl/src/widgets/lv_dropdown.o ./Middlewares/lvgl/src/widgets/lv_dropdown.su ./Middlewares/lvgl/src/widgets/lv_img.cyclo ./Middlewares/lvgl/src/widgets/lv_img.d ./Middlewares/lvgl/src/widgets/lv_img.o ./Middlewares/lvgl/src/widgets/lv_img.su ./Middlewares/lvgl/src/widgets/lv_label.cyclo ./Middlewares/lvgl/src/widgets/lv_label.d ./Middlewares/lvgl/src/widgets/lv_label.o ./Middlewares/lvgl/src/widgets/lv_label.su ./Middlewares/lvgl/src/widgets/lv_line.cyclo ./Middlewares/lvgl/src/widgets/lv_line.d ./Middlewares/lvgl/src/widgets/lv_line.o ./Middlewares/lvgl/src/widgets/lv_line.su ./Middlewares/lvgl/src/widgets/lv_objx_templ.cyclo ./Middlewares/lvgl/src/widgets/lv_objx_templ.d ./Middlewares/lvgl/src/widgets/lv_objx_templ.o ./Middlewares/lvgl/src/widgets/lv_objx_templ.su ./Middlewares/lvgl/src/widgets/lv_roller.cyclo ./Middlewares/lvgl/src/widgets/lv_roller.d ./Middlewares/lvgl/src/widgets/lv_roller.o ./Middlewares/lvgl/src/widgets/lv_roller.su ./Middlewares/lvgl/src/widgets/lv_slider.cyclo ./Middlewares/lvgl/src/widgets/lv_slider.d ./Middlewares/lvgl/src/widgets/lv_slider.o ./Middlewares/lvgl/src/widgets/lv_slider.su ./Middlewares/lvgl/src/widgets/lv_switch.cyclo ./Middlewares/lvgl/src/widgets/lv_switch.d ./Middlewares/lvgl/src/widgets/lv_switch.o ./Middlewares/lvgl/src/widgets/lv_switch.su ./Middlewares/lvgl/src/widgets/lv_table.cyclo ./Middlewares/lvgl/src/widgets/lv_table.d ./Middlewares/lvgl/src/widgets/lv_table.o ./Middlewares/lvgl/src/widgets/lv_table.su ./Middlewares/lvgl/src/widgets/lv_textarea.cyclo ./Middlewares/lvgl/src/widgets/lv_textarea.d ./Middlewares/lvgl/src/widgets/lv_textarea.o ./Middlewares/lvgl/src/widgets/lv_textarea.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-widgets

