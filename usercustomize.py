from matplotlib import font_manager
import matplotlib.pyplot
import numpy

numpy.set_printoptions(linewidth = 250)

for style in ["Regular", "Bold", "Italic", "BoldItalic"]:
    font_manager.fontManager.addfont(f"/usr/share/fonts/truetype/noto/NotoSans-{style}.ttf")
font_manager.fontManager.addfont(f"/usr/share/fonts/truetype/noto/NotoSansMath-Regular.ttf")
font_manager.fontManager.addfont(f"/usr/share/fonts/truetype/noto/NotoSansMono-Regular.ttf")

matplotlib.pyplot.rcParams["font.family"] = "sans-serif"
matplotlib.pyplot.rcParams["font.sans-serif"] = ["Noto Sans Math"]
matplotlib.pyplot.rcParams["mathtext.fontset"] = "custom"
matplotlib.pyplot.rcParams["mathtext.rm"] = "Noto Sans Math"
matplotlib.pyplot.rcParams["mathtext.sf"] = "Noto Sans Math"
matplotlib.pyplot.rcParams["mathtext.bf"] = "Noto Sans:bold"
matplotlib.pyplot.rcParams["mathtext.cal"] = "cmsy10"
matplotlib.pyplot.rcParams["mathtext.it"] = "Noto Sans:italic"
matplotlib.pyplot.rcParams["mathtext.tt"] = "Noto Sans Mono"

