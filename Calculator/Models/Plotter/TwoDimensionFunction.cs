using org.mariuszgromada.math.mxparser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Calculator.Models.Plotter
{
    /// <summary>
    /// Implementaton for MXParser.
    /// </summary>
    public class TwoDimensionFunction : IFunction
    {
        private Function function;
        public TwoDimensionFunction(string function)
        {
            var formattedFunction = FormatFunctionExpression(function);
            this.function = new Function(Constants.Y, formattedFunction, Constants.X);
        }

        public Point GeneratePoint(params AxisArgument[] arguments)
        {
            var point = new Point();
            foreach (var argument in arguments)
            {
                point[Constants.X] = argument.Value;
                var functionArgument = new Argument(argument.Name, argument.Value);
                point[Constants.Y] = function.calculate(functionArgument);
            }
            return point;
        }

        private string FormatFunctionExpression(string function)
        {
            return function.ToLower().Trim();
        }
    }
}
