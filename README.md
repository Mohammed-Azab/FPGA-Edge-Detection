# FPGA-Based Edge Detection for Line Detection

This project implements an edge detection algorithm on an FPGA to detect a line in a 10x10 grayscale image matrix. The main goal of this project is to process the image data, apply the Prewitt Filter for edge detection, and then display the start and end coordinates of the detected line on a 7-segment display.

### **Project Overview**
- **Input**: A 10x10 matrix of grayscale values ranging from 0 (black) to 255 (white). Each element in the matrix represents a pixel in the image.
- **Edge Detection**: The edge detection is performed using the **Prewitt Filter**, which calculates gradients in both horizontal and vertical directions to detect edges.
- **Output**: The FPGA system will display the **start and end coordinates** of the detected line on a 7-segment display. For example, if a line is detected from coordinate `(1, 2)` to `(1, 8)`, the display will show `1 2 _ _ 1 8`.

### **How It Works**
1. **[Prewitt Filter](./Prewitt_Filter.md)**: The system uses the Prewitt filter to calculate edge gradients in horizontal and vertical directions. The gradients are then used to identify the presence of edges in the image.
2. **Coordinate Detection**: After detecting the edges, the system calculates the starting and ending points of the detected line in the image.
3. **7-Segment Display**: The start and end coordinates are shown on the 7-segment display for easy visualization of the detected line's position.

### **FPGA Implementation**
- The entire edge detection process is implemented using **VHDL** (VHSIC Hardware Description Language) on an FPGA.
- The FPGA processes the input image in real-time and outputs the coordinates without any significant delay.

### **Additional Files**
- **C++ Implementation**: A file is included that demonstrates the implementation of the same edge detection algorithm in **C++**. This file allows you to see how the Prewitt Filter and edge detection are implemented in a high-level language, which can be useful for understanding the algorithm's logic before translating it to hardware (VHDL).
- **[Prewitt Filter Documentation](./Prewitt_Filter.md)***: Another file in Markdown (`.md`) format is included that explains how the **Prewitt Filter** works. This file provides an in-depth explanation of the filter’s mechanism and how it is used for edge detection. You can refer to this documentation to understand the theoretical basis of the filter and its application in the project.

### **Conclusion**
This project demonstrates how edge detection algorithms can be implemented directly on hardware using an FPGA, enabling efficient, real-time image processing. By including both a C++ implementation and detailed documentation on the Prewitt Filter, it provides a comprehensive understanding of both the algorithm and its hardware implementation.
