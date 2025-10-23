################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.c 

OBJS += \
./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.o 

C_DEPS += \
./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/%.o Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/%.su Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/%.cyclo: ../Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/%.c Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Programming/STM32/Poly3/Middlewares/lvgl" -I"C:/Programming/STM32/Poly3/Middlewares/ST7789" -I"C:/Programming/STM32/Poly3/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-ibl

clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-ibl:
	-$(RM) ./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.cyclo ./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.d ./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.o ./Middlewares/lvgl/src/libs/gltf/gltf_view/ibl/lv_gltf_ibl_sampler.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-ibl

