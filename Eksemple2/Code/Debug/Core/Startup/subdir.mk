################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32l072kztx.s 

OBJS += \
./Core/Startup/startup_stm32l072kztx.o 

S_DEPS += \
./Core/Startup/startup_stm32l072kztx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/startup_stm32l072kztx.o: ../Core/Startup/startup_stm32l072kztx.s
	arm-none-eabi-gcc -mcpu=cortex-m0plus -g3 -c -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32l072kztx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

