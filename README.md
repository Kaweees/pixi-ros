<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<div align="left">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]

</div>

<a href="https://github.com/Kaweees/pixi_ros2">
  <img alt="ROS2 Logo" src="assets/img/ros2.png" align="right" width="150">
</a>

<div align="left">
  <h1><em><a href="https://github.com/Kaweees/pixi_ros2">~pixi_ros2</a></em></h1>
</div>

<!-- ABOUT THE PROJECT -->

A template for developing production-ready ROS2 (Humble Hawksbill) applications with [Pixi](https://pixi.sh/) and [Nix](https://nixos.org/).

### Built With

[![ROS2][ROS2-shield]][ROS2-url]
[![C++][C++-shield]][C++-url]
[![Python][Python-shield]][Python-url]
[![Nix][Nix-shield]][Nix-url]
[![Pixi][Pixi-shield]][Pixi-url]

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

Before attempting to build this project, make sure you have [Nix](https://nixos.org/download.html) installed on your machine.

### Installation

To get a local copy of the project up and running on your machine, follow these simple steps:

1. Clone the project repository

   ```sh
   git clone https://github.com/Kaweees/pixi_ros2.git
   cd pixi_ros2
   ```

2. Install the project dependencies

   ```sh
   nix-shell --max-jobs $(nproc) # Linux / Windows (WSL)
   nix-shell --max-jobs $(sysctl -n hw.ncpu) # macOS
   ```

3. Run the project

   ```sh
   just run
   ```

<!-- PROJECT FILE STRUCTURE -->

## Project Structure

```sh
pixi_ros2/
├── include/                       - project header files
├── src/                           - project source files
│   └── main.c                     - Entry point, main function
├── CMakeLists.txt                 - CMake build script
├── LICENSE                        - project license
└── README.md                      - you are here
```

## License

The source code for [Kaweees/pixi_ros2](https://github.com/Kaweees/pixi_ros2) is distributed under the terms of the MIT License, as I firmly believe that collaborating on free and open-source software fosters innovations that mutually and equitably beneficial to both collaborators and users alike. See [`LICENSE`](./LICENSE) for details and more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/Kaweees/ros2.svg?style=for-the-badge
[contributors-url]: https://github.com/Kaweees/ros2/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Kaweees/ros2.svg?style=for-the-badge
[forks-url]: https://github.com/Kaweees/ros2/network/members
[stars-shield]: https://img.shields.io/github/stars/Kaweees/ros2.svg?style=for-the-badge
[stars-url]: https://github.com/Kaweees/ros2/stargazers

<!-- MARKDOWN SHIELD BAGDES & LINKS -->
<!-- https://github.com/Ileriayo/markdown-badges -->

[ROS2-shield]: https://img.shields.io/badge/ROS2-%23008080.svg?style=for-the-badge&logo=ros&logoColor=22314E&labelColor=222222&color=22314E
[ROS2-url]: https://www.ros.org/
[C++-shield]: https://img.shields.io/badge/C++-%23008080.svg?style=for-the-badge&logo=c%2B%2B&logoColor=004482&labelColor=222222&color=004482
[C++-url]: https://isocpp.org/
[Python-shield]: https://img.shields.io/badge/Python-%23008080.svg?style=for-the-badge&logo=python&logoColor=FFDD54&labelColor=222222&color=306998
[Python-url]: https://www.python.org/
[Nix-shield]: https://img.shields.io/badge/NIX-%23008080.svg?style=for-the-badge&logo=NixOS&logoColor=5277C3&labelColor=222222&color=5277C3
[Nix-url]: https://nixos.org/
[Pixi-shield]: https://img.shields.io/badge/Pixi-%23008080.svg?style=for-the-badge&logo=Pixi&logoColor=F9C405&labelColor=222222&color=F9C405
[Pixi-url]: https://pixi.sh/
