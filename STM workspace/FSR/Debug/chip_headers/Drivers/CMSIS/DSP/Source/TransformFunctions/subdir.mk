################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c 

S_UPPER_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.S 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o 

S_UPPER_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.o chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.su chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.c chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.o: ../chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/%.S chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -DARM_MATH_CM4 -DSTM32F407xx -D__FPU_PRESENT -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctions.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/TransformFunctionsF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.cyclo
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.su
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions

