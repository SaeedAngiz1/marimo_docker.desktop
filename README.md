# 🍃 Marimo: Comprehensive Guide & Documentation

<div align="center">

![Marimo Logo](https://img.shields.io/badge/Marimo-Python%20Notebook-blue?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)
![GitHub Stars](https://img.shields.io/github/stars/marimo-team/marimo?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Ready-blue?style=for-the-badge&logo=docker)

**A comprehensive guide to Marimo - the next-generation reactive Python notebook**

[📖 Full Documentation](#-comprehensive-guide) • [🚀 Quick Start](#-quick-start) • [💡 Features](#-key-features) • [📚 Resources](#-resources)

</div>

---

## 📋 Table of Contents

- [About](#-about)
- [What is Marimo?](#-what-is-marimo)
- [Quick Start](#-quick-start)
- [Key Features](#-key-features)
- [Why Marimo?](#-why-marimo)
- [Installation](#-installation)
- [Docker Setup](#-docker-setup)
- [Comprehensive Guide](#-comprehensive-guide)
- [Resources](#-resources)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🎯 About

This repository contains a comprehensive guide and documentation for **Marimo**, a revolutionary reactive Python notebook that's transforming how developers, data scientists, and AI engineers work with Python.

Marimo is an open-source project with **17.8k+ stars on GitHub** and is trusted by organizations like:
- 🎓 **Stanford** - Computational energy research
- 🤖 **OpenAI** - AI development and experimentation
- 📊 **Kaggle/Sumble** - Data science workflows
- 🏥 **Bunkerhill Health** - Medical imaging and ML
- 🔒 **DNB Cyber Defense** - Security analytics
- ⚛️ **SLAC National Accelerator Lab** - Scientific research

---

## 🍃 What is Marimo?

**Marimo** is a next-generation, reactive Python notebook that revolutionizes notebook-based development. Unlike traditional notebooks like Jupyter, Marimo is designed from the ground up to solve well-known problems:

- ✅ **Reactive Programming** - Cells automatically update when dependencies change
- ✅ **Git-Friendly** - Stored as pure Python (.py) files, not JSON
- ✅ **No Hidden State** - Deterministic execution, reproducible results
- ✅ **Interactive UI** - Built-in widgets (sliders, dropdowns, plots) without callbacks
- ✅ **SQL Support** - First-class SQL integration for databases and dataframes
- ✅ **AI-Native** - Built-in AI assistants and code generation
- ✅ **Deployable** - Run as scripts, apps, or export to WASM

### The Reactive Paradigm

When you run a cell or interact with a UI element, Marimo automatically:
- Runs dependent cells that reference changed variables
- Marks affected cells as stale (for expensive computations)
- Maintains code and output consistency
- Eliminates hidden state by tracking variable dependencies

```python
# Cell 1
x = 10

# Cell 2 (automatically runs when x changes)
y = x * 2  # y = 20

# Cell 3 (automatically runs when y changes)
result = y + 5  # result = 25
```

Change `x` to 15, and Marimo automatically re-runs Cell 2 and Cell 3!

---

## 🚀 Quick Start

### Option 1: Using Docker (Recommended for Easy Setup)

```bash
# Start Marimo with Docker Compose
docker-compose up

# Access Marimo at http://localhost:2718
```

> **Note:** If Docker asks for a password, enter your **Windows user account password**. This is a one-time setup. See [AUTHENTICATION_GUIDE.md](AUTHENTICATION_GUIDE.md) for details.

📖 **[Full Docker Guide →](DOCKER.md)** | 🔐 **[Authentication Help →](AUTHENTICATION_GUIDE.md)**

### Option 2: Local Installation

```bash
# Basic installation
pip install marimo
marimo tutorial intro

# With recommended features (SQL, AI, etc.)
pip install marimo[recommended]

# Using uv (modern Python package manager)
uv add marimo
uv run marimo tutorial intro

# Using conda
conda install -c conda-forge marimo
marimo tutorial intro
```

### Create Your First Notebook

```bash
# Open the Marimo editor
marimo edit

# Run a notebook as an app
marimo run notebook.py

# Run as a Python script
python notebook.py
```

---

## ✨ Key Features

### 🎯 Core Capabilities

| Feature | Description |
|---------|-------------|
| ⚡️ **Reactive** | Automatic cell execution based on dependencies |
| 🐍 **Git-Friendly** | Stored as pure Python files (.py) |
| 🖐️ **Interactive** | Built-in UI widgets (sliders, dropdowns, plots) |
| 🛢️ **SQL Support** | First-class SQL for databases and dataframes |
| 🤖 **AI-Native** | Built-in AI assistants and code generation |
| 🔬 **Reproducible** | No hidden state, deterministic execution |
| 🏃 **Executable** | Run as scripts or deploy as apps |
| 🧩 **Reusable** | Import functions from one notebook to another |
| 🧪 **Testable** | Use pytest on notebooks |
| ⌨️ **Modern Editor** | GitHub Copilot, vim keybindings, and more |

### 🆚 Marimo vs Jupyter

| Feature | Jupyter | Marimo |
|---------|---------|--------|
| Storage | JSON | Python (.py) |
| Reactivity | Manual | Automatic |
| Hidden State | Yes | No |
| Git-friendly | Difficult | Easy |
| SQL Support | External | Built-in |
| Interactive UI | ipywidgets | Native |
| AI Integration | External | Built-in |
| Execution Order | Cell position | Dependencies |

---

## 💡 Why Marimo?

### Problems Marimo Solves

1. **No Hidden State** - Variables are removed when cells are deleted
2. **Automatic Dependencies** - No manual cell re-execution needed
3. **Git-Friendly** - Easy to diff, merge, and review
4. **Deterministic** - Execution order based on dependencies, not position
5. **Better DX** - Modern editor with AI, autocomplete, and more
6. **Built-in Interactivity** - No callbacks required for UI elements
7. **SQL Integration** - Native support for databases
8. **Reproducible** - No hidden state, clean execution every time

### Real-World Testimonials

> "There have been few technologies that have been truly transformational for me. marimo is one of them."  
> — **Anthony Goldbloom**, Founder/CEO Kaggle, Sumble

> "My many frustrations with Jupyter notebooks are well known. marimo solves all of them, elegantly."  
> — **Samuel Colvin**, Founder/CEO Pydantic

> "The most powerful feature is that these notebooks are reactive: if you change the value or code in a cell every other cell that depends on that value will update automatically."  
> — **Simon Willison**, Creator of Django, llm

---

## 📦 Installation

### Prerequisites

- Python 3.8 or higher
- pip, conda, or uv package manager

### Install Options

<details>
<summary><b>📥 pip Installation</b></summary>

```bash
# Basic
pip install marimo

# With all features
pip install marimo[recommended]
```
</details>

<details>
<summary><b>📥 uv Installation</b></summary>

```bash
uv add marimo
uv run marimo tutorial intro
```
</details>

<details>
<summary><b>📥 conda Installation</b></summary>

```bash
conda install -c conda-forge marimo
marimo tutorial intro
```
</details>

---

## 🐳 Docker Setup

This project includes a complete Docker setup for running Marimo in a containerized environment.

### Quick Start with Docker

```bash
# Start Marimo editor
docker-compose up

# Access at http://localhost:2718
```

### Features

- ✅ Pre-configured Marimo environment
- ✅ Persistent notebook storage
- ✅ Data directory mounting
- ✅ Health checks
- ✅ Non-root user for security
- ✅ Easy port configuration

### Docker Services

- **marimo** - Main editor service (port 2718)
- **marimo-app** - Optional app runner (port 2719)

For detailed Docker documentation, see **[DOCKER.md](DOCKER.md)**.

---

## 📖 Comprehensive Guide

For a complete, in-depth guide to Marimo, see the **[Comprehensive Guide](./docs/MARIMO_COMPREHENSIVE_GUIDE.md)** which covers:

- ✅ Complete feature overview
- ✅ Detailed installation instructions
- ✅ Use cases and applications
- ✅ Technical architecture
- ✅ Advanced features
- ✅ Best practices
- ✅ Comparison with other tools
- ✅ Learning resources
- ✅ And much more!

**[📚 Read the Full Guide →](./docs/MARIMO_COMPREHENSIVE_GUIDE.md)**

---

## 📚 Resources

### Official Resources

- 🌐 **Website**: [marimo.io](https://marimo.io/)
- 📖 **Documentation**: [docs.marimo.io](https://docs.marimo.io/)
- 💻 **GitHub**: [github.com/marimo-team/marimo](https://github.com/marimo-team/marimo)
- 💬 **Discord**: Community support and discussions
- 🐦 **Twitter**: [@marimo_io](https://twitter.com/marimo_io)
- 📺 **YouTube**: Tutorial videos and examples

### Tutorial Video

📹 **[Marimo Tutorial: Reactive Python Notebooks | Complete Crash Course](https://www.youtube.com/watch?v=qBlY9K4_KYI)**

This comprehensive tutorial covers:
- Installation and environment setup
- UI walkthrough and navigation
- Reactive programming concepts
- Interactive elements and widgets
- Markdown and documentation
- Variable management (lazy vs auto mode)
- SQL integration
- Converting and running as scripts
- AI-powered features
- Real-world examples

### Example Notebooks

Marimo provides numerous example notebooks:
- 🎨 Embedding Visualizer
- 🧠 Neural Networks with Micrograd
- 🏎️ DuckDB SQL: F1 Explorer
- 🏷️ Bulk Labelling
- 📊 Reactive Plots
- 🔢 Interactive Matrices
- 🤖 AI Code Interpreter Chatbot
- And many more...

---

## 🎯 Use Cases

Marimo is perfect for:

- 📊 **Data Science** - Exploratory data analysis, visualization, statistical modeling
- 🤖 **Machine Learning** - Model training, hyperparameter tuning, experiment tracking
- 🧠 **AI Development** - LLM experimentation, prompt engineering, AI-powered code generation
- 🗄️ **SQL & Databases** - Query databases, explore warehouses, build data pipelines
- 🔬 **Research** - Reproducible research, teaching materials, interactive demos
- 🚀 **App Development** - Build interactive web apps, dashboards, data tools

---

## 🤝 Contributing

Contributions are welcome! This repository is a documentation project. If you'd like to contribute to Marimo itself, please visit the [official Marimo repository](https://github.com/marimo-team/marimo).

### Ways to Contribute

- 📝 Improve documentation
- 🐛 Report issues
- 💡 Suggest features
- 📖 Share examples
- ⭐ Star the repository

---

## 📄 License

This documentation project is licensed under the MIT License. Marimo itself is licensed under the Apache 2.0 License.

---

## 🙏 Acknowledgments

- **Marimo Team** - For creating this amazing tool
- **Community** - For contributions and feedback
- **Organizations** - Stanford, OpenAI, Kaggle, and others for adoption and support

---

<div align="center">

**Made with ❤️ for the Python and Data Science community**

[⬆ Back to Top](#-marimo-comprehensive-guide--documentation)

</div>

