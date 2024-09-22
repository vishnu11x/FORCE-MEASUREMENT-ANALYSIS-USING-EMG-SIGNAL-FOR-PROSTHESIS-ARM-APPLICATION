################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c \
../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d \
./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/%.o chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/%.su chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/%.c chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctions.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/MatrixFunctionsF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.su
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.su
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.su ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o ./chip_headers/Drivers/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-MatrixFunctions

