# Marimo: A Comprehensive Guide

## What is Marimo?

**Marimo** is a next-generation, reactive Python notebook that revolutionizes how developers, data scientists, and AI engineers work with Python. Unlike traditional notebooks like Jupyter, Marimo is designed from the ground up to solve well-known problems associated with notebook-based development, making it a modern, AI-native alternative that's both powerful and developer-friendly.

Marimo is an open-source project that has gained significant traction, with **17.8k+ stars on GitHub** and adoption by organizations like Stanford, OpenAI, Kaggle, and various top companies worldwide.

---

## Core Philosophy: Reactive Programming

### The Reactive Paradigm

Marimo's fundamental innovation is its **reactive programming model**. When you run a cell or interact with a UI element, Marimo automatically:

- **Runs dependent cells** that reference the changed variables
- **Marks affected cells as stale** (for expensive computations)
- **Maintains code and output consistency** automatically
- **Eliminates hidden state** by tracking variable dependencies

This reactive approach solves the classic notebook problem where code, outputs, and program state can become inconsistent, leading to bugs and confusion.

### Example of Reactivity

In traditional notebooks, if you change a variable in one cell, you must manually re-run all dependent cells. In Marimo:

```python
# Cell 1
x = 10

# Cell 2 (automatically runs when x changes)
y = x * 2  # y = 20

# Cell 3 (automatically runs when y changes)
result = y + 5  # result = 25
```

If you change `x` to 15, Marimo automatically re-runs Cell 2 and Cell 3, keeping everything in sync.

---

## Key Features and Capabilities

### 1. **Git-Friendly Storage**

- **Stored as pure Python (.py files)**, not JSON like Jupyter
- **Version control friendly** - easy to diff, merge, and review
- **No hidden metadata** - just clean Python code
- Compatible with standard Git workflows

### 2. **Reactive Execution**

- **Automatic dependency tracking** - Marimo statically analyzes your code
- **Deterministic execution order** - based on variable references, not cell position
- **No hidden state** - delete a cell, and its variables are removed from memory
- **Stale cell marking** - for expensive computations, cells are marked stale instead of auto-running

### 3. **Interactive UI Elements**

Built-in interactive widgets that bind directly to Python variables:

- **Sliders** - for numeric inputs
- **Dropdowns** - for selection
- **Dataframe tables** - interactive data exploration
- **Plots** - selectable and interactive visualizations
- **Chat interfaces** - for AI interactions
- **No callbacks required** - UI elements directly update Python variables

### 4. **First-Class SQL Support**

- **Query dataframes** with SQL syntax
- **Connect to databases**: DuckDB, SQLite, Postgres, MySQL, and more
- **Query warehouses and lakehouses**
- **SQL cells** that integrate seamlessly with Python
- Results returned as Python dataframes

### 5. **AI-Native Editor**

- **GitHub Copilot-style autocomplete**
- **AI assistants** for code generation
- **Context-aware chat** - AI understands your variables and data
- **Zero-shot notebook generation** - generate entire notebooks with AI
- **Customizable system prompts** and API keys
- **Support for local models** or hosted APIs

### 6. **Reproducible and Deterministic**

- **No hidden state** - every execution is clean
- **Deterministic execution order** - based on dependencies
- **Built-in package management** - serialize requirements in notebook files
- **Automatic virtual environment management**
- **PEP 723 metadata support** for package dependencies

### 7. **Executable as Scripts**

- **Run notebooks as Python scripts** directly
- **Parameterized by CLI arguments**
- **Reusable as modules** - import functions from one notebook to another
- **Testable with pytest** - standard Python testing tools work

### 8. **Deployable as Apps**

- **Export to WebAssembly (WASM)** - run entirely in the browser
- **Serve as web apps** with the Marimo CLI
- **Share interactive notebooks** on the web
- **Export to HTML** for static sharing
- **Deploy anywhere** - cloud, local, or embedded

### 9. **Modern Developer Experience**

- **GitHub Copilot integration**
- **Vim keybindings** support
- **Code formatting** with Ruff
- **Variable explorer** for debugging
- **Hover tooltips** and fast code completion
- **Debugging panels**
- **Extensive hotkeys**
- **VS Code extension** available
- **Works with Cursor, neovim, Zed**, and other editors

### 10. **Interactive Dataframes**

- **Page through millions of rows** blazingly fast
- **Search and filter** data without code
- **Sort columns** interactively
- **Transform data** with UI elements
- **No code required** for basic data exploration

### 11. **Dynamic Markdown**

- **Parametrized markdown** using Python variables
- **Tell dynamic stories** that depend on your data
- **Rich documentation** integrated with code

### 12. **Batteries-Included**

Marimo replaces multiple tools:
- **Jupyter** - notebook functionality
- **Streamlit** - interactive apps
- **Jupytext** - text-based notebooks
- **ipywidgets** - interactive widgets
- **Papermill** - parameterized notebooks
- And more...

---

## Installation and Setup

### Basic Installation

```bash
pip install marimo
marimo tutorial intro
```

### With Recommended Features

For SQL cells, AI completion, and additional features:

```bash
pip install marimo[recommended]
```

### Using uv (Modern Python Package Manager)

```bash
uv add marimo
uv run marimo tutorial intro
```

### Using Conda

```bash
conda install -c conda-forge marimo
marimo tutorial intro
```

---

## Getting Started

### Creating Notebooks

```bash
marimo edit
```

This opens the Marimo editor where you can:
- Create new notebooks
- Edit existing notebooks
- Work with multiple notebooks

### Running as Apps

```bash
marimo run notebook.py
```

This serves your notebook as an interactive web application.

### Converting Notebooks

Marimo notebooks can be:
- **Run as scripts**: `python notebook.py`
- **Imported as modules**: `from notebook import function`
- **Exported to HTML**: for sharing
- **Deployed as web apps**: with the CLI

---

## Use Cases and Applications

### 1. **Data Science and Analytics**

- Exploratory data analysis
- Data visualization
- Statistical modeling
- Interactive data exploration

### 2. **Machine Learning**

- Model training and evaluation
- Hyperparameter tuning with interactive sliders
- Model comparison and visualization
- Experiment tracking

### 3. **AI Development**

- LLM experimentation
- Prompt engineering
- AI-powered code generation
- Chat interfaces for AI models

### 4. **SQL and Database Work**

- Query databases interactively
- Explore data warehouses
- Build data pipelines
- Data transformation workflows

### 5. **Research and Education**

- Reproducible research
- Teaching materials
- Interactive demonstrations
- Computational notebooks

### 6. **Application Development**

- Build interactive web apps
- Create dashboards
- Develop data tools
- Prototype applications

---

## Advantages Over Traditional Notebooks (Jupyter)

### 1. **No Hidden State Problems**

- Jupyter: Variables persist even after deleting cells
- Marimo: Deleting a cell removes its variables from memory

### 2. **Automatic Dependency Management**

- Jupyter: Manual cell re-execution required
- Marimo: Automatic reactive execution

### 3. **Git-Friendly**

- Jupyter: JSON format is hard to diff and merge
- Marimo: Pure Python files are easy to version control

### 4. **Deterministic Execution**

- Jupyter: Execution order depends on cell position
- Marimo: Execution order based on variable dependencies

### 5. **Better Developer Experience**

- Jupyter: Limited editor features
- Marimo: Modern editor with AI, autocomplete, and more

### 6. **Built-in Interactivity**

- Jupyter: Requires ipywidgets and callbacks
- Marimo: Native interactive elements, no callbacks needed

### 7. **SQL Integration**

- Jupyter: Requires external libraries and setup
- Marimo: First-class SQL support built-in

### 8. **Reproducibility**

- Jupyter: Hidden state makes reproducibility difficult
- Marimo: No hidden state, deterministic execution

---

## Real-World Adoption

Marimo is trusted by teams worldwide:

- **Stanford** - Computational energy research
- **OpenAI** - AI development and experimentation
- **Kaggle/Sumble** - Data science workflows
- **Bunkerhill Health** - Empowering engineers, MLEs, and radiologists
- **DNB Cyber Defense** - Replaced Databricks notebooks
- **SLAC National Accelerator Lab** - Research applications

### Testimonials

> "There have been few technologies that have been truly transformational for me. marimo is one of them. Today, just about everything you need to know about Sumble lives in marimo."  
> — **Anthony Goldbloom**, Founder/CEO Kaggle, Sumble

> "My many frustrations with Jupyter notebooks are well known. marimo solves all of them, elegantly, while keeping the same sense of a 'notebook' that many of us have always found so appealing."  
> — **Samuel Colvin**, Founder/CEO Pydantic

> "The most powerful feature is that these notebooks are reactive: if you change the value or code in a cell every other cell that depends on that value will update automatically."  
> — **Simon Willison**, Creator of Django, llm

---

## Technical Architecture

### Reactive System

Marimo uses static analysis to:
1. **Parse Python code** in each cell
2. **Extract variable references** and definitions
3. **Build a dependency graph**
4. **Execute cells** in dependency order
5. **Track changes** and re-execute dependent cells

### Performance

- **Static analysis** - only runs cells that need to run
- **Lazy mode** - mark cells as stale instead of auto-running expensive computations
- **Efficient execution** - optimized runtime for performance

### Storage Format

Marimo notebooks are stored as standard Python files with special comments:

```python
# Cell 1
import pandas as pd

# Cell 2
data = pd.read_csv('data.csv')

# Cell 3
print(data.head())
```

This makes them:
- **Human-readable**
- **Git-friendly**
- **Executable as scripts**
- **Importable as modules**

---

## Advanced Features

### 1. **Lazy vs Auto Mode**

- **Auto mode**: Cells run automatically when dependencies change
- **Lazy mode**: Cells are marked as stale instead of auto-running (for expensive computations)

### 2. **Variable Management**

- **Variable explorer** - see all variables in memory
- **Dependency visualization** - understand cell relationships
- **State management** - clean state on every execution

### 3. **Package Management**

- **Install on import** - packages installed automatically
- **Serialize requirements** - save dependencies in notebook
- **Virtual environment management** - isolated environments
- **PEP 723 support** - standard metadata format

### 4. **Export Options**

- **HTML export** - static web pages
- **WASM export** - run in browser without server
- **Script export** - pure Python files
- **App deployment** - interactive web apps

### 5. **Terminal Integration**

- **CLI tools** - command-line interface
- **Script execution** - run notebooks from terminal
- **Parameter passing** - CLI arguments to notebooks

---

## Learning Resources

### Official Resources

- **Website**: [marimo.io](https://marimo.io/)
- **Documentation**: [docs.marimo.io](https://docs.marimo.io/)
- **GitHub**: [github.com/marimo-team/marimo](https://github.com/marimo-team/marimo)
- **Discord**: Community support
- **YouTube**: Tutorial videos and examples

### Tutorial Video

The provided YouTube video ([Marimo Tutorial: Reactive Python Notebooks | Complete Crash Course](https://www.youtube.com/watch?v=qBlY9K4_KYI)) covers:

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
- Embedding Visualizer
- Neural Networks with Micrograd
- DuckDB SQL: F1 Explorer
- Bulk Labelling
- Reactive Plots
- Interactive Matrices
- AI Code Interpreter Chatbot
- And many more...

---

## Comparison with Other Tools

### vs Jupyter

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

### vs Streamlit

| Feature | Streamlit | Marimo |
|---------|-----------|--------|
| Format | Script | Notebook |
| Reactivity | Full rerun | Selective |
| Storage | .py | .py |
| Notebook feel | No | Yes |
| SQL Support | External | Built-in |
| AI Features | Limited | Native |

---

## Best Practices

### 1. **Organize by Dependencies**

Structure your notebook based on logical dependencies, not just cell order.

### 2. **Use Lazy Mode for Expensive Operations**

Mark expensive computations as lazy to prevent accidental re-execution.

### 3. **Leverage Interactive Elements**

Use sliders, dropdowns, and other UI elements to make your notebooks interactive.

### 4. **Version Control**

Commit your notebooks to Git - they're just Python files!

### 5. **Use SQL for Data Queries**

Leverage built-in SQL support for database and dataframe queries.

### 6. **Test Your Notebooks**

Use pytest to test functions defined in your notebooks.

### 7. **Document with Markdown**

Use dynamic markdown to create rich, data-driven documentation.

---

## Limitations and Considerations

### 1. **Learning Curve**

The reactive paradigm may require some adjustment if coming from Jupyter.

### 2. **Ecosystem**

While growing rapidly, the ecosystem is smaller than Jupyter's.

### 3. **Extension Support**

Some Jupyter extensions may not be available.

### 4. **Performance**

For very large notebooks, static analysis may take time.

---

## Future of Marimo

Marimo is actively developed with:
- Regular feature updates
- Growing community
- Enterprise adoption
- Continuous improvements
- Expanding ecosystem

---

## Conclusion

Marimo represents a significant evolution in Python notebook technology. By combining:

- **Reactive programming** for automatic consistency
- **Git-friendly storage** for version control
- **Built-in interactivity** for rich UIs
- **SQL integration** for data work
- **AI-native features** for modern development
- **Reproducibility** for reliable results

Marimo solves many of the fundamental problems with traditional notebooks while maintaining the notebook experience that developers love. Whether you're a data scientist, ML engineer, researcher, or developer, Marimo offers a modern, powerful alternative to traditional notebook tools.

With adoption by major organizations and a rapidly growing community, Marimo is positioned to become the standard for Python notebook development in the future.

---

## References and Sources

1. **Official Website**: [marimo.io](https://marimo.io/)
2. **Documentation**: [docs.marimo.io](https://docs.marimo.io/)
3. **GitHub Repository**: [github.com/marimo-team/marimo](https://github.com/marimo-team/marimo)
4. **YouTube Tutorial**: [Marimo Tutorial: Reactive Python Notebooks | Complete Crash Course](https://www.youtube.com/watch?v=qBlY9K4_KYI)
5. **Community**: Discord, Twitter, YouTube channels

---

*Last Updated: Based on information available as of 2025*

