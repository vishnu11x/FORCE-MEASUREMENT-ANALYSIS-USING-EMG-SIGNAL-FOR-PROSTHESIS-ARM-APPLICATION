################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/%.o chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/%.su chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/%.c chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctions.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/InterpolationFunctionsF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-InterpolationFunctions

