using GenieFramework
@genietools

dā = PlotData(
    x = [1, 2, 3],
    y = [4, 1, 2],
    plot = StipplePlotly.Charts.PLOT_TYPE_BAR,
    name = "Barcelona")
    
dā = PlotData(
    x = [1, 2, 3],
    y = [2, 4, 5],
    plot = StipplePlotly.Charts.PLOT_TYPE_BAR,
    name = "London")

@handlers begin
    @in data = [dā, dā]
    @in layout = PlotLayout()
end

function ui()
    [
        h1("GenieFramework š§ Data Vizualization š")
        plot(:data, layout=:layout)
    ]
end

@page("/", ui)

Server.isrunning() || Server.up()