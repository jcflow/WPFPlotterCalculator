using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator.Models.Plotter
{
    public class AxisArgument
    {
        /// <summary>
        /// Constructs a axis argument.
        /// </summary>
        /// <param name="name">The axis name.</param>
        /// <param name="value">The axis numeric value.</param>
        public AxisArgument(string name, double value)
        {
            Name = name;
            Value = value;
        }

        public string Name { get; set; }
        public double Value { get; set; }
    }
}
