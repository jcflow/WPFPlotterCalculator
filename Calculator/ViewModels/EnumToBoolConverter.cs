using Calculator.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace Calculator.ViewModels
{
    public class EnumToBoolConverter : IValueConverter
    {
        #region IValueConverter Members
        public object Convert(object value, Type targetType, object param, System.Globalization.CultureInfo culture)
        {
            return value.Equals(param);
        }

        // Convert boolean to enum, returning [param] if true
        public object ConvertBack(object value, Type targetType, object param, System.Globalization.CultureInfo culture)
        {
            return (bool)value ? param : Binding.DoNothing;
        }
        #endregion
    }
}
