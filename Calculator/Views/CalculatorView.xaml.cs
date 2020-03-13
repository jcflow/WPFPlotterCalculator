using Calculator.ViewModels;
using System.Windows;
using System.Windows.Controls;

namespace Calculator.Views
{
    /// <summary>
    /// Interaction logic for CalculatorView.xaml
    /// </summary>
    public partial class CalculatorView : UserControl
    {
        public CalculatorView()
        {
            InitializeComponent();
            DataContext = new CalculatorViewModel();
        }
    }
}
