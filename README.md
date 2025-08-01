# STM32F405 SPI Master for AD7761 ADC

A STM32CubeIDE project implementing SPI communication between STM32F405 microcontroller and AD7761/EVAL-AD7761FMCZ Analog-to-Digital Converter evaluation board.

## 📋 Project Overview

This project demonstrates how to use the STM32F405 microcontroller as an SPI master to interface with the AD7761 ADC evaluation board. The AD7761 is a high-performance, 24-bit sigma-delta ADC designed for precision measurement applications.

### Key Features
- **MCU**: STM32F405RGT6 
- **Interface**: SPI Master communication
- **Target ADC**: AD7761 / EVAL-AD7761FMCZ
- **Development Environment**: STM32CubeIDE
- **HAL Library**: STM32F4xx HAL Driver

## 🛠️ Hardware Setup

### Required Components
- STM32F405 Development Board (e.g., STM32F405RGT6)
- EVAL-AD7761FMCZ Evaluation Board
- Connecting wires for SPI interface

### Pin Configuration
| STM32F405 Pin | Function | AD7761 Pin No | Function |
|---------------|----------|------------|------------|
| PB13 | SPI2_SCK |17 | SCLK |
| PB14 | SPI2_MISO | 19 | SDO |
| PB15 | SPI2_MOSI| 18 | SDI |
| PB12 | SPI2_NSS | 16 |  /CS |

*Note: Update the pin assignments based on your actual hardware configuration*

## 📁 Project Structure

```
STM/
├── Core/
│   ├── Inc/           # Header files
│   │   ├── main.h
│   │   ├── stm32f4xx_hal_conf.h
│   │   └── stm32f4xx_it.h
│   ├── Src/           # Source files
│   │   ├── main.c     # Main application code
│   │   ├── stm32f4xx_hal_msp.c
│   │   ├── stm32f4xx_it.c
│   │   └── system_stm32f4xx.c
│   └── Startup/       # Startup files
├── Drivers/           # STM32 HAL drivers
├── Debug/            # Build output files
├── STMSPI.ioc       # STM32CubeMX configuration
└── *.ld             # Linker scripts
```

## 🚀 Getting Started

### Prerequisites
- STM32CubeIDE (latest version recommended)
- STM32CubeMX (integrated with CubeIDE)
- ST-Link debugger/programmer

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/STM32F405-AD7761-SPI.git
   cd STM32F405-AD7761-SPI
   ```

2. **Open in STM32CubeIDE**
   - Launch STM32CubeIDE
   - File → Import → Existing Projects into Workspace
   - Select the project folder
   - Build the project

3. **Hardware Connections**
   - Connect your STM32F405 board to the EVAL-AD7761FMCZ
   - Ensure proper power supply to both boards
   - Connect ST-Link for programming and debugging

### Building and Flashing

1. **Build the project**
   - Right-click on project → Build Project
   - Or use Ctrl+B

2. **Flash to MCU**
   - Connect ST-Link debugger
   - Use the Debug configuration

## 💻 Code Overview

### Main Functions

The main application implements:
- SPI2 initialization and configuration
- AD7761 register read/write operations

### Key Code Sections

```c
// SPI Handle
SPI_HandleTypeDef hspi2;

// Response variable for AD7761 communication
volatile uint16_t response = 0;
```

## 📊 Features & Functionality

- **SPI Master Mode**: Configured for high-speed communication with AD7761
- **Register Access**: Read and write operations to AD7761 configuration registers

## 🔧 Configuration

### SPI Configuration
- **Mode**: Master
- **Data Size**: 16-bit
- **Clock Polarity**: CPOL = 0
- **Clock Phase**: CPHA = 1
- **Baud Rate**: 50 MHz Maximum (refer to AD7761 datasheet)

### AD7761 Settings
Modify the AD7761 configuration registers as needed for your application:
- Input range settings
- Sampling rate configuration
- Filter settings


## 📚 Documentation

- [STM32F405 Reference Manual](https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405-415-stm32f407-417-stm32f427-437-and-stm32f429-439-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf)
- [AD7761 Datasheet](https://www.analog.com/media/en/technical-documentation/data-sheets/AD7761.pdf)
- [EVAL-AD7761FMCZ User Guide](https://www.analog.com/media/en/technical-documentation/user-guides/EVAL-AD7761FMCZ-UG-949.pdf)

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **ckwckw02** - *Initial work* - [ckwckw02](https://github.com/ckwckw02)

## 🙏 Acknowledgments

- STMicroelectronics for the excellent HAL libraries
- Analog Devices for the AD7761 documentation
- STM32 community for support and examples

## 📸 Images

### Hardware Setup
![Hardware Setup](images/hardware.jpg)
*STM32F405 connected to EVAL-AD7761FMCZ evaluation board*

### Schematic Diagram
![Schematic](images/wiring.png)
*SPI connection schematic between STM32F405 and AD7761*

### Software Screenshot
![STM32CubeIDE](images/response.png)
*Project opened in debug on STM32CubeIDE*

### DSO Screenshot
![DSO](images/scope.png)
*Oscilloscope (/CS, CLK, SDI SDO)*
