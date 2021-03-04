################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32L0xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Core/Inc/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
BatteryMonitor_L052.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
BatteryMonitor_L052.list \

OBJCOPY_BIN += \
BatteryMonitor_L052.bin \


# All Target
all: BatteryMonitor_L052.elf secondary-outputs

# Tool invocations
BatteryMonitor_L052.elf: $(OBJS) $(USER_OBJS) C:\Users\gert\Documents\STM32CubeIDE\workspace\BatteryMonitor_L052\STM32L052K8TX_FLASH.ld
	arm-none-eabi-gcc -o "BatteryMonitor_L052.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m0plus -T"C:\Users\gert\Documents\STM32CubeIDE\workspace\BatteryMonitor_L052\STM32L052K8TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="BatteryMonitor_L052.map" -Wl,--gc-sections -static -u _printf_float --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

BatteryMonitor_L052.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "BatteryMonitor_L052.list"
	@echo 'Finished building: $@'
	@echo ' '

BatteryMonitor_L052.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "BatteryMonitor_L052.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
