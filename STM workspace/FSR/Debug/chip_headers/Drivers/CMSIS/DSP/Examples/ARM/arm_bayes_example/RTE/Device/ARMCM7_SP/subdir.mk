################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.c \
../chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.o \
./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.d \
./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/%.o chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/%.su chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/%.c chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_bayes_example-2f-RTE-2f-Device-2f-ARMCM7_SP

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_bayes_example-2f-RTE-2f-Device-2f-ARMCM7_SP:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.d ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.o ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/startup_ARMCM7.su ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.d ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.o ./chip_headers/Drivers/CMSIS/DSP/Examples/ARM/arm_bayes_example/RTE/Device/ARMCM7_SP/system_ARMCM7.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_bayes_example-2f-RTE-2f-Device-2f-ARMCM7_SP

