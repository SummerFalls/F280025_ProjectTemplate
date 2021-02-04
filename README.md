# :beers: F280025_ProjectTemplate ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/SummerFalls/F280025_ProjectTemplate?label=%E4%BB%A3%E7%A0%81%E5%A4%A7%E5%B0%8F)

```c
/*
 *                  ___           ___           ___           ___
 *      ___        /  /\         /__/|         /  /\         /  /\
 *     /  /\      /  /:/_       |  |:|        /  /::\       /  /:/_
 *    /  /:/     /  /:/ /\      |  |:|       /  /:/\:\     /  /:/ /\
 *   /  /:/     /  /:/ /:/_   __|__|:|      /  /:/~/::\   /  /:/ /::\
 *  /  /::\    /__/:/ /:/ /\ /__/::::\____ /__/:/ /:/\:\ /__/:/ /:/\:\
 * /__/:/\:\   \  \:\/:/ /:/    ~\~~\::::/ \  \:\/:/__\/ \  \:\/:/~/:/
 * \__\/  \:\   \  \::/ /:/      |~~|:|~~   \  \::/       \  \::/ /:/
 *      \  \:\   \  \:\/:/       |  |:|      \  \:\        \__\/ /:/
 *       \__\/    \  \::/        |  |:|       \  \:\         /__/:/
 *                 \__\/         |__|/         \__\/         \__\/
 *                  ___           ___                       ___           ___           ___           ___           ___                       ___
 *    ___          /__/\         /  /\          ___        /  /\         /__/\         /__/\         /  /\         /__/\          ___        /  /\
 *   /  /\         \  \:\       /  /:/_        /  /\      /  /::\        \  \:\       |  |::\       /  /:/_        \  \:\        /  /\      /  /:/_
 *  /  /:/          \  \:\     /  /:/ /\      /  /:/     /  /:/\:\        \  \:\      |  |:|:\     /  /:/ /\        \  \:\      /  /:/     /  /:/ /\
 * /__/::\      _____\__\:\   /  /:/ /::\    /  /:/     /  /:/~/:/    ___  \  \:\   __|__|:|\:\   /  /:/ /:/_   _____\__\:\    /  /:/     /  /:/ /::\
 * \__\/\:\__  /__/::::::::\ /__/:/ /:/\:\  /  /::\    /__/:/ /:/___ /__/\  \__\:\ /__/::::| \:\ /__/:/ /:/ /\ /__/::::::::\  /  /::\    /__/:/ /:/\:\
 *    \  \:\/\ \  \:\~~\~~\/ \  \:\/:/~/:/ /__/:/\:\   \  \:\/:::::/ \  \:\ /  /:/ \  \:\~~\__\/ \  \:\/:/ /:/ \  \:\~~\~~\/ /__/:/\:\   \  \:\/:/~/:/
 *     \__\::/  \  \:\  ~~~   \  \::/ /:/  \__\/  \:\   \  \::/~~~~   \  \:\  /:/   \  \:\        \  \::/ /:/   \  \:\  ~~~  \__\/  \:\   \  \::/ /:/
 *     /__/:/    \  \:\        \__\/ /:/        \  \:\   \  \:\        \  \:\/:/     \  \:\        \  \:\/:/     \  \:\           \  \:\   \__\/ /:/
 *     \__\/      \  \:\         /__/:/          \__\/    \  \:\        \  \::/       \  \:\        \  \::/       \  \:\           \__\/     /__/:/
 *                 \__\/         \__\/                     \__\/         \__\/         \__\/         \__\/         \__\/                     \__\/
 */
```

## :closed_book: 简介

基于 TI TMS320F280025(C) 的 ProjectTemplate`（工程模板）`

## :speech_balloon: 工程模板详细说明

<hr/>
<div align="center">

### 一、工程目录

<br/>

![目录结构][目录结构]

</div>

#### :card_file_box: **普通目录**

- :file_folder: __DBG_FLASH
  - > 在 FLASH 中调试/烧录代码时，工程编译后生成的目录，打包工程时，本目录可删除，并且本目录不受 Git 版本管理控制
- :file_folder: __DBG_RAM
  - > 在 RAM 中调试代码时，工程编译后生成的目录，打包工程时，本目录可删除，并且本目录不受 Git 版本管理控制
- :file_folder: \_\_Docs\_\_
  - > 本目录仅用来存放工程说明相关文档或图片
- :file_folder: User_Src
  - > **本目录存放工程维护人员自行编写的源代码文件，跟 TI 库源文件目录进行区分**
- :file_folder: targetConfigs
  - > 本目录存放目标配置文件（烧录器设置……）

#### :card_file_box: **链接目录**

> 如上图所示，以下目录为 `链接目录`，在工程所在的硬盘根目录下不可见，但在 IDE 环境中，可见以下目录左侧为“带有一个小箭头的文件夹图标”，意为 `Linked Folder` 之意，好处在于采用相对路径的方式，工程调用的 C2000WARE 库文件不受 C2000WARE 软件的安装位置所影响，解决同一工程拷贝到不同人的电脑上可能编译报错等问题。同时，这也极大方便了 C2000WARE 库版本的无缝切换。
>
> :warning: **注意：**
>
> 1. 凡是 `链接目录` 下的代码文件，其真实的硬盘路径不在工程的目录下，而位于 C2000WARE 的安装目录下，其本质是 `库文件`，所以 **不得修改！** 请知悉。
> 2. 以下 `链接目录` 的命名前缀采用 `_TI_`，好处在于在 IDE 开发环境中这几个库文件夹的排序位于 IDE 工程目录树的上方，方便与工程维护人员的业务代码目录（`User_Src\..`）区分开来。
> 3. 本工程模板同时加入了 `位域库` 和 `DriverLib库`。对于实时性要求很高的场合，例如定时器中断，可以使用 `位域库`；对于实时性要求低的场合，例如外设初始化，可以使用 `DriverLib库`。这样做的目的是为了在代码效率和代码可读性、可维护性之间取得最佳的平衡。

- :file_folder: \_TI_common_include
  - `COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR\device_support\f28002x\common\include`
- :file_folder: \_TI_common_source
  - `COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR\device_support\f28002x\common\source`
- :file_folder: \_TI_driverlib
  - `COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR\driverlib\f28002x\driverlib`
- :file_folder: \_TI_headers_include
  - `COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR\device_support\f28002x\headers\include`
- :file_folder: \_TI_headers_source
  - `COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR\device_support\f28002x\headers\source`

<hr/>
<div align="center">

### 二、部分关键工程文件

<br/>
</div>

- :gear: TMS320F280025C.ccxml
  - > 目标配置文件（烧录器设置……）
- :construction: 28002x_generic_ram_lnk.cmd
  - > 工程链接文件 - RAM 调试模式
- :construction: 28002x_generic_flash_lnk.cmd
  - > 工程链接文件 - FLASH 调试/烧录模式
- :construction: f28002x_headers_nonbios.cmd
  - > `位域库` 依赖的外设地址空间映射文件
- :page_with_curl: \<PROJECT NAME\>.map
  - > `map文件`，工程编译后产生，用于分析符号映射相关信息

<hr/>
<div align="center">

### 三、静态库

<br/>

![F28002x_三角函数库相关说明][F28002x_三角函数库相关说明]

</div>

如上图所示，`rts2800_fpu32_eabi.lib` 为主要函数静态库，它主要提供了 C 标准库相关的库函数，覆盖范围最广，其中也包括三角函数 sin、cos 等等；而 `rts2800_fpu32_fast_supplement_eabi.lib` 则是对 `rts2800_fpu32_eabi.lib` 中部分三角函数的覆写，采用更快的 LUT 查找表方式实现；除了这两个静态库以外，`TMU 单元`则可对更小范围的三角函数进行硬件级别的支持，通过生成对应的硬件指令，以实现更快的代码执行速度和更小的代码体积。

- Floating Point mode (--fp_mode) = `relaxed` ---> 使能 TMU 单元
  - 此时 `rts2800_fpu32_fast_supplement_eabi.lib` 中的部分函数（如上图所示）被硬件指令集替代，通过这些硬件指令集实现的相关计算不完全符合 ISO 规范，并且会损失一些精度，但是可以有更快的执行速度以及更小的代码。
- Floating Point mode (--fp_mode) = `strict`  ---> 禁能 TMU 单元
  - 此时 `rts2800_fpu32_fast_supplement_eabi.lib` 中所有的库函数都将由 LUT 的方式实现，并且在程序链接阶段，该库将会覆盖 `rts2800_fpu32_eabi.lib` 中的同名函数（即优先被链接器链接）。

<hr/>
<div align="center">

### 四、工程设置

<br/>

![优化设置][优化设置]

</div>

> - 优化等级
>   - 2 级优化：使能 DriverLib 函数内联、……
>   - 4 级优化：For sin32, cos32 and sincos32 on devices with limited memory、……
> - 速度 vs. 代码尺寸优化
>   - 默认 2 级
> - 浮点模式
>   - relaxed：使能 TMU 单元
>   - strict：关闭 TMU 单元

<div align="center">

![库选择和切换][库选择和切换]

</div>

> 在此可方便切换 `C2000WARE` 的库版本：配合`头文件包含设置（Include Options）`和`库引用设置（File Search Path）`以及工程中的`库源文件相对链接引用`，可实现无缝切换库版本并进行编译。

<div align="center">

![头文件包含设置][头文件包含设置]

</div>

> 工程头文件包含设置统一使用相对路径的方式，例如相对 `${COM_TI_C2000WARE_SOFTWARE_PACKAGE_INSTALL_DIR}/` 目录进行头文件的引用包含。

<div align="center">

![库引用设置][库引用设置]

</div>

> 与头文件包含设置类似，采用相对路径法添加 `.lib` 文件进行引用链接
>> :warning: 注意：针对 `rts2800_fpu32_fast_supplement_eabi.lib` 和 `rts2800_fpu32_eabi.lib`，必须注意两个静态库文件的引用顺序，并且，勾选下方的 `Search libraries in priority order (--priority, -priority)` 前方的复选框以使能按顺序链接库文件。

<div align="center">

![工程全局预定义宏_FLASH][工程全局预定义宏_FLASH]

![工程全局预定义宏_RAM][工程全局预定义宏_RAM]

</div>

> 工程全局预定义宏设置： :warning: 注意 `Configuration` 不同，预定义宏会有差别。

<div align="center">

![语言设置][语言设置]

</div>

> 部分 C 语法需要 C99 支持，故选择 C99 mode。

<div align="center">

![堆栈大小设置][堆栈大小设置]

</div>

> `堆`大小默认为空，可能需要设置一下，否则编译可能会有警告。

## :gear: 硬件 & 软件 需求

### 硬件需求

- TMS320F280025 Custom PCB Board
- Texas Instruments XDS100v3 USB Debug Probe

### 软件需求

- Code Composer Studio 9.3.0

---

## :star: License

MIT License

Copyright © 2021 SummerFalls

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[F28002x_三角函数库相关说明]: ./__Docs__/F28002x_三角函数库相关说明.png
[目录结构]: ./__Docs__/目录结构.png
[优化设置]: ./__Docs__/优化设置.png
[库选择和切换]: ./__Docs__/库选择和切换.png
[头文件包含设置]: ./__Docs__/头文件包含设置.png
[库引用设置]: ./__Docs__/库引用设置.png
[工程全局预定义宏_FLASH]: ./__Docs__/工程全局预定义宏_FLASH.png
[工程全局预定义宏_RAM]: ./__Docs__/工程全局预定义宏_RAM.png
[语言设置]: ./__Docs__/语言设置.png
[堆栈大小设置]: ./__Docs__/堆栈大小设置.png
