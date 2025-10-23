################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
../Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
../Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c 

OBJS += \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.o \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.d \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d \
./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/nxp/pxp/%.o Middlewares/lvgl/src/draw/nxp/pxp/%.su Middlewares/lvgl/src/draw/nxp/pxp/%.cyclo: ../Middlewares/lvgl/src/draw/nxp/pxp/%.c Middlewares/lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp.su ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.cyclo ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.d ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.o ./Middlewares/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.su ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.cyclo ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.d ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.o ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.su ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.cyclo ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.d ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.o ./Middlewares/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

