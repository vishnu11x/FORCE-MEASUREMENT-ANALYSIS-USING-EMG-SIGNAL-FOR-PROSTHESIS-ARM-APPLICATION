################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c \
../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d \
./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/%.o chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/%.su chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/%.c chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.su ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

