"""
# Example Marimo Notebook

This is a simple example notebook to demonstrate Marimo's reactive programming.

## Getting Started

This notebook shows:
- Basic Python code
- Reactive cell execution
- Interactive elements
- Data visualization
"""

import marimo

__generated_with = "0.1.0"
app = marimo.App()

# Cell 1: Import libraries
@app.cell
def __():
    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    return pd, np, plt

# Cell 2: Create sample data
@app.cell
def __(np):
    # Generate sample data
    data = np.random.randn(100)
    return data,

# Cell 3: Display data statistics
@app.cell
def __(data, pd):
    df = pd.DataFrame({'values': data})
    stats = df.describe()
    return df, stats

# Cell 4: Visualize data
@app.cell
def __(data, plt):
    plt.figure(figsize=(10, 6))
    plt.hist(data, bins=20, edgecolor='black')
    plt.title('Sample Data Distribution')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.grid(True, alpha=0.3)
    plt.show()
    return

# Cell 5: Interactive slider example
@app.cell
def __(marimo):
    slider = marimo.ui.slider(1, 100, value=50, label="Sample Size")
    return slider,

# Cell 6: Use slider value reactively
@app.cell
def __(np, slider):
    # This cell automatically updates when slider changes
    sample_size = slider.value
    new_data = np.random.randn(sample_size)
    mean_value = new_data.mean()
    return mean_value, new_data, sample_size

# Cell 7: Display results
@app.cell
def __(mean_value, sample_size):
    print(f"Sample size: {sample_size}")
    print(f"Mean value: {mean_value:.4f}")
    return

if __name__ == "__main__":
    app.run()

