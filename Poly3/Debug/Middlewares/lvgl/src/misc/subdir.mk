################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/misc/lv_anim.c \
../Middlewares/lvgl/src/misc/lv_anim_timeline.c \
../Middlewares/lvgl/src/misc/lv_area.c \
../Middlewares/lvgl/src/misc/lv_async.c \
../Middlewares/lvgl/src/misc/lv_bidi.c \
../Middlewares/lvgl/src/misc/lv_color.c \
../Middlewares/lvgl/src/misc/lv_fs.c \
../Middlewares/lvgl/src/misc/lv_gc.c \
../Middlewares/lvgl/src/misc/lv_ll.c \
../Middlewares/lvgl/src/misc/lv_log.c \
../Middlewares/lvgl/src/misc/lv_lru.c \
../Middlewares/lvgl/src/misc/lv_math.c \
../Middlewares/lvgl/src/misc/lv_mem.c \
../Middlewares/lvgl/src/misc/lv_printf.c \
../Middlewares/lvgl/src/misc/lv_style.c \
../Middlewares/lvgl/src/misc/lv_style_gen.c \
../Middlewares/lvgl/src/misc/lv_templ.c \
../Middlewares/lvgl/src/misc/lv_timer.c \
../Middlewares/lvgl/src/misc/lv_tlsf.c \
../Middlewares/lvgl/src/misc/lv_txt.c \
../Middlewares/lvgl/src/misc/lv_txt_ap.c \
../Middlewares/lvgl/src/misc/lv_utils.c 

OBJS += \
./Middlewares/lvgl/src/misc/lv_anim.o \
./Middlewares/lvgl/src/misc/lv_anim_timeline.o \
./Middlewares/lvgl/src/misc/lv_area.o \
./Middlewares/lvgl/src/misc/lv_async.o \
./Middlewares/lvgl/src/misc/lv_bidi.o \
./Middlewares/lvgl/src/misc/lv_color.o \
./Middlewares/lvgl/src/misc/lv_fs.o \
./Middlewares/lvgl/src/misc/lv_gc.o \
./Middlewares/lvgl/src/misc/lv_ll.o \
./Middlewares/lvgl/src/misc/lv_log.o \
./Middlewares/lvgl/src/misc/lv_lru.o \
./Middlewares/lvgl/src/misc/lv_math.o \
./Middlewares/lvgl/src/misc/lv_mem.o \
./Middlewares/lvgl/src/misc/lv_printf.o \
./Middlewares/lvgl/src/misc/lv_style.o \
./Middlewares/lvgl/src/misc/lv_style_gen.o \
./Middlewares/lvgl/src/misc/lv_templ.o \
./Middlewares/lvgl/src/misc/lv_timer.o \
./Middlewares/lvgl/src/misc/lv_tlsf.o \
./Middlewares/lvgl/src/misc/lv_txt.o \
./Middlewares/lvgl/src/misc/lv_txt_ap.o \
./Middlewares/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./Middlewares/lvgl/src/misc/lv_anim.d \
./Middlewares/lvgl/src/misc/lv_anim_timeline.d \
./Middlewares/lvgl/src/misc/lv_area.d \
./Middlewares/lvgl/src/misc/lv_async.d \
./Middlewares/lvgl/src/misc/lv_bidi.d \
./Middlewares/lvgl/src/misc/lv_color.d \
./Middlewares/lvgl/src/misc/lv_fs.d \
./Middlewares/lvgl/src/misc/lv_gc.d \
./Middlewares/lvgl/src/misc/lv_ll.d \
./Middlewares/lvgl/src/misc/lv_log.d \
./Middlewares/lvgl/src/misc/lv_lru.d \
./Middlewares/lvgl/src/misc/lv_math.d \
./Middlewares/lvgl/src/misc/lv_mem.d \
./Middlewares/lvgl/src/misc/lv_printf.d \
./Middlewares/lvgl/src/misc/lv_style.d \
./Middlewares/lvgl/src/misc/lv_style_gen.d \
./Middlewares/lvgl/src/misc/lv_templ.d \
./Middlewares/lvgl/src/misc/lv_timer.d \
./Middlewares/lvgl/src/misc/lv_tlsf.d \
./Middlewares/lvgl/src/misc/lv_txt.d \
./Middlewares/lvgl/src/misc/lv_txt_ap.d \
./Middlewares/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/misc/%.o Middlewares/lvgl/src/misc/%.su Middlewares/lvgl/src/misc/%.cyclo: ../Middlewares/lvgl/src/misc/%.c Middlewares/lvgl/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-misc

clean-Middlewares-2f-lvgl-2f-src-2f-misc:
	-$(RM) ./Middlewares/lvgl/src/misc/lv_anim.cyclo ./Middlewares/lvgl/src/misc/lv_anim.d ./Middlewares/lvgl/src/misc/lv_anim.o ./Middlewares/lvgl/src/misc/lv_anim.su ./Middlewares/lvgl/src/misc/lv_anim_timeline.cyclo ./Middlewares/lvgl/src/misc/lv_anim_timeline.d ./Middlewares/lvgl/src/misc/lv_anim_timeline.o ./Middlewares/lvgl/src/misc/lv_anim_timeline.su ./Middlewares/lvgl/src/misc/lv_area.cyclo ./Middlewares/lvgl/src/misc/lv_area.d ./Middlewares/lvgl/src/misc/lv_area.o ./Middlewares/lvgl/src/misc/lv_area.su ./Middlewares/lvgl/src/misc/lv_async.cyclo ./Middlewares/lvgl/src/misc/lv_async.d ./Middlewares/lvgl/src/misc/lv_async.o ./Middlewares/lvgl/src/misc/lv_async.su ./Middlewares/lvgl/src/misc/lv_bidi.cyclo ./Middlewares/lvgl/src/misc/lv_bidi.d ./Middlewares/lvgl/src/misc/lv_bidi.o ./Middlewares/lvgl/src/misc/lv_bidi.su ./Middlewares/lvgl/src/misc/lv_color.cyclo ./Middlewares/lvgl/src/misc/lv_color.d ./Middlewares/lvgl/src/misc/lv_color.o ./Middlewares/lvgl/src/misc/lv_color.su ./Middlewares/lvgl/src/misc/lv_fs.cyclo ./Middlewares/lvgl/src/misc/lv_fs.d ./Middlewares/lvgl/src/misc/lv_fs.o ./Middlewares/lvgl/src/misc/lv_fs.su ./Middlewares/lvgl/src/misc/lv_gc.cyclo ./Middlewares/lvgl/src/misc/lv_gc.d ./Middlewares/lvgl/src/misc/lv_gc.o ./Middlewares/lvgl/src/misc/lv_gc.su ./Middlewares/lvgl/src/misc/lv_ll.cyclo ./Middlewares/lvgl/src/misc/lv_ll.d ./Middlewares/lvgl/src/misc/lv_ll.o ./Middlewares/lvgl/src/misc/lv_ll.su ./Middlewares/lvgl/src/misc/lv_log.cyclo ./Middlewares/lvgl/src/misc/lv_log.d ./Middlewares/lvgl/src/misc/lv_log.o ./Middlewares/lvgl/src/misc/lv_log.su ./Middlewares/lvgl/src/misc/lv_lru.cyclo ./Middlewares/lvgl/src/misc/lv_lru.d ./Middlewares/lvgl/src/misc/lv_lru.o ./Middlewares/lvgl/src/misc/lv_lru.su ./Middlewares/lvgl/src/misc/lv_math.cyclo ./Middlewares/lvgl/src/misc/lv_math.d ./Middlewares/lvgl/src/misc/lv_math.o ./Middlewares/lvgl/src/misc/lv_math.su ./Middlewares/lvgl/src/misc/lv_mem.cyclo ./Middlewares/lvgl/src/misc/lv_mem.d ./Middlewares/lvgl/src/misc/lv_mem.o ./Middlewares/lvgl/src/misc/lv_mem.su ./Middlewares/lvgl/src/misc/lv_printf.cyclo ./Middlewares/lvgl/src/misc/lv_printf.d ./Middlewares/lvgl/src/misc/lv_printf.o ./Middlewares/lvgl/src/misc/lv_printf.su ./Middlewares/lvgl/src/misc/lv_style.cyclo ./Middlewares/lvgl/src/misc/lv_style.d ./Middlewares/lvgl/src/misc/lv_style.o ./Middlewares/lvgl/src/misc/lv_style.su ./Middlewares/lvgl/src/misc/lv_style_gen.cyclo ./Middlewares/lvgl/src/misc/lv_style_gen.d ./Middlewares/lvgl/src/misc/lv_style_gen.o ./Middlewares/lvgl/src/misc/lv_style_gen.su ./Middlewares/lvgl/src/misc/lv_templ.cyclo ./Middlewares/lvgl/src/misc/lv_templ.d ./Middlewares/lvgl/src/misc/lv_templ.o ./Middlewares/lvgl/src/misc/lv_templ.su ./Middlewares/lvgl/src/misc/lv_timer.cyclo ./Middlewares/lvgl/src/misc/lv_timer.d ./Middlewares/lvgl/src/misc/lv_timer.o ./Middlewares/lvgl/src/misc/lv_timer.su ./Middlewares/lvgl/src/misc/lv_tlsf.cyclo ./Middlewares/lvgl/src/misc/lv_tlsf.d ./Middlewares/lvgl/src/misc/lv_tlsf.o ./Middlewares/lvgl/src/misc/lv_tlsf.su ./Middlewares/lvgl/src/misc/lv_txt.cyclo ./Middlewares/lvgl/src/misc/lv_txt.d ./Middlewares/lvgl/src/misc/lv_txt.o ./Middlewares/lvgl/src/misc/lv_txt.su ./Middlewares/lvgl/src/misc/lv_txt_ap.cyclo ./Middlewares/lvgl/src/misc/lv_txt_ap.d ./Middlewares/lvgl/src/misc/lv_txt_ap.o ./Middlewares/lvgl/src/misc/lv_txt_ap.su ./Middlewares/lvgl/src/misc/lv_utils.cyclo ./Middlewares/lvgl/src/misc/lv_utils.d ./Middlewares/lvgl/src/misc/lv_utils.o ./Middlewares/lvgl/src/misc/lv_utils.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-misc

