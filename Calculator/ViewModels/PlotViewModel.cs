using Calculator.Models.Plotter;
using OxyPlot;
using System.Collections.Generic;
using System.Windows.Input;

namespace Calculator.ViewModels
{
    public class PlotViewModel : ViewModelBase
    {
        private FunctionPlotterModel functionPlotter;
        private string function;
        private DelegateCommand<string> plotButtonPressCommand;
        private int invalidateFlag;
        public PlotViewModel()
        {
            functionPlotter = new FunctionPlotterModel();
            function = string.Empty;
            invalidateFlag = 0;
            Points = new List<DataPoint>();
        }
        public IList<DataPoint> Points { get; private set; }

        public string Function { get; set; }

        public int InvalidateFlag
        {
            get { return invalidateFlag; }
            set
            {
                invalidateFlag = value;
                OnPropertyChanged("InvalidateFlag");
            }
        }
        public ICommand PlotButtonPressCommand
        {
            get
            {
                if (plotButtonPressCommand == null)
                {
                    plotButtonPressCommand = new DelegateCommand<string>(
                        PlotButtonPress, CanPlotButtonPress);
                }
                return plotButtonPressCommand;
            }
        }

        private bool CanPlotButtonPress(string button)
        {
            return true;
        }

        //deals with button inputs and sorts out the display accordingly
        public void PlotButtonPress(string button)
        {
            Points.Clear();
            functionPlotter.Function = new TwoDimensionFunction(this.Function);
            var plotArgument = new PlotArgument(Constants.PLOT_MINIMUM_LIMIT,
                Constants.PLOT_MAXIMUM_LIMIT,
                Constants.PLOT_STEP);
            functionPlotter.GeneratePoints(plotArgument);
            foreach (var point in functionPlotter.Points)
            {
                var xValue = point[Constants.X];
                var yValue = point[Constants.Y];
                Points.Add(new DataPoint(xValue, yValue));
            }
            InvalidateFlag++;
        }
    }
}
