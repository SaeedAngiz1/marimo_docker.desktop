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

__generated_with = "0.18.4"
app = marimo.App()


@app.cell
def _():
    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    return np, pd, plt


@app.cell
def _(np):
    # Generate sample data
    data = np.random.randn(100)
    return (data,)


@app.cell
def _(data, pd):
    df = pd.DataFrame({'values': data})
    stats = df.describe()
    return


@app.cell
def _(data, plt):
    plt.figure(figsize=(10, 6))
    plt.hist(data, bins=20, edgecolor='black')
    plt.title('Sample Data Distribution')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.grid(True, alpha=0.3)
    plt.show()
    return


@app.cell
def _(marimo):
    slider = marimo.ui.slider(1, 100, value=50, label="Sample Size")
    return (slider,)


@app.cell
def _(np, slider):
    # This cell automatically updates when slider changes
    sample_size = slider.value
    new_data = np.random.randn(sample_size)
    mean_value = new_data.mean()
    return mean_value, sample_size


@app.cell
def _(mean_value, sample_size):
    print(f"Sample size: {sample_size}")
    print(f"Mean value: {mean_value:.4f}")
    return


@app.cell
def _():
    print('Hi Saeed')
    return


if __name__ == "__main__":
    app.run()
