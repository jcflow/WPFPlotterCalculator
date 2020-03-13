using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator.Models.Plotter
{
    public class FunctionPlotterModel
    {
        public IFunction Function { get; set; }

        public IList<Point> Points { get; set; }

        public FunctionPlotterModel()
        {
            Points = new List<Point>();
        }

        /// <summary>
        /// Generate function points using the plot arguments.
        /// </summary>
        public void GeneratePoints(PlotArgument plotArgument)
        {
            if (Function == null)
            {
                throw new NullReferenceException("Null function can not be plotted.");
            }
            var generatedPoints = new List<Point>();
            for (double xValue = plotArgument.MinimumLimit; 
                xValue <= plotArgument.MaximumLimit;
                xValue += plotArgument.Step)
            {
                var argument = new AxisArgument(Constants.X, xValue);
                var point = Function.GeneratePoint(argument);
                generatedPoints.Add(point);
            }
            Points = generatedPoints;
        }
    }
}
