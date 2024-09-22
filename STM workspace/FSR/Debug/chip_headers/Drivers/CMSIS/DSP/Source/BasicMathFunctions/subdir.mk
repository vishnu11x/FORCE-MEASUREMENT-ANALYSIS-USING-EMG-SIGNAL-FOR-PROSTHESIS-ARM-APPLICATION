################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.o chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.su chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/%.c chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctions.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/BasicMathFunctionsF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.su
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.su ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o ./chip_headers/Drivers/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-BasicMathFunctions

