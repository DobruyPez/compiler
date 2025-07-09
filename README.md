<a id="readme-top"></a>


<!-- PROJECT LOGO -->
<br />
<div align="center">

<h3 align="center">TXT to MASM Compiler</h3>

  <p align="center">
    A compiler that transforms custom syntax code into executable MASM assembly. 
    <br />
    <a href="https://github.com/DobruyPez/WallsOfFate"><strong>Explore the docs »</strong></a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This compiler transforms code written in a custom language (described in `Пояснительная записка.docx`) into executable MASM assembly code. The solution provides:

- **Custom syntax compilation** - Processes source code with specialized syntax rules
- **Error logging** - Detailed compilation errors and warnings in `log.txt`
- **MASM-compatible output** - Generates ready-to-assemble `.asm` files
- **Simple workflow** - Straightforward input/output file processing


<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![C#][Csharp-badge]][Csharp-url]
* [![.NET][Dotnet-badge]][Dotnet-url]
* MASM Assembler

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Microsoft .NET SDK 6.0+
- MASM assembler
- Text editor for source files

### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/DobruyPez/compiler.git
   ```
3. Build the solution
   ```sh
   dotnet build
   ```
4. Change git remote url to avoid accidental pushes to base project
   ```sh
   git remote set-url origin github_username/repo_name
   git remote -v # confirm the changes
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage
Full language specification available in <a href="https://github.com/DobruyPez/WallsOfFate"><strong>Пояснительная записка.docx</strong></a>
1. Place your source code in in.txt
2. Run the compiler:
   ```sh
   dotnet run --project LPLab10_git
   ```
3. Check compilation results:
   - Successful compilation: Code/main.asm generated
   - Errors: detailed report in log.txt
4. Assemble and run MASM code:
   ```sh
   ml /c /coff main.asm
   link /SUBSYSTEM:CONSOLE main.obj
   main.exe
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the Unlicense License.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Stas Drozd - [LinkedIn](www.linkedin.com/in/stas-drozd-278ba4373) - stasdrozd791@gmail.com
Project Link: [https://github.com/DobruyPez/WallsOfFate.git](https://github.com/DobruyPez/WallsOfFate.git)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->


[Csharp-badge]: https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white
[Csharp-url]: https://dotnet.microsoft.com/en-us/languages/csharp
[Dotnet-badge]: https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=dotnet&logoColor=white
[Dotnet-url]: https://dotnet.microsoft.com/
