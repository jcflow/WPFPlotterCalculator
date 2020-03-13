using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator.Models.Plotter
{
    /// <summary>
    /// Class that only wraps all the necessary plot arguments.
    /// </summary>
    public class PlotArgument
    {
        public PlotArgument(double minimumList, double maximumList, double step)
        {
            MinimumLimit = minimumList;
            MaximumLimit = maximumList;
            Step = step;
        }
        public double MinimumLimit { get; set; }
        public double MaximumLimit { get; set; }
        public double Step { get; set; }
    }
}
