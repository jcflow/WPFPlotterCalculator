using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator.Models.Plotter
{
    /// <summary>
    /// Represents a point of the graph.
    /// Use the key as axis name and value as the number representation.
    /// Example: { <"X", 10>, <"Y", 20> }
    /// </summary>
    public class Point: Dictionary<string, double>
    {
        public Point() : base()
        {
        }
    }
}
