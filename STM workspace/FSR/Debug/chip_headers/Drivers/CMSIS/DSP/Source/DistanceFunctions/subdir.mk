################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c 

OBJS += \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o 

C_DEPS += \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d 


# Each subdirectory must supply rules for building sources it contributes
chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/%.o chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/%.su chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/%.cyclo: ../chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/%.c chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DARM_MATH_CM4 -DSTM32F407xx -DUSE_HAL_DRIVER -c -I../Inc -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/Include" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/CMSIS/DSP/PrivateInclude" -I"D:/PROJECTS/Git/HMI_MODEL_PROTHESIS_ARM/STM workspace/FSR/chip_headers/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions

clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions:
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctions.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.su
	-$(RM) ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.su ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.cyclo ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o ./chip_headers/Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.su

.PHONY: clean-chip_headers-2f-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions

