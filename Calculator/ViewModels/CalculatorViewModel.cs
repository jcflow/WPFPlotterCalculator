using Calculator.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Calculator.ViewModels
{
    public class CalculatorViewModel : ViewModelBase
    {
        #region Private members

        private DisplayableCalculatorController calculatorManager;
        private DelegateCommand<DigitButtonType> digitButtonPressCommand;
        private DelegateCommand<ActionButtonType> actionButtonPressCommand;
        private DelegateCommand<OperationButtonType> binaryOperationButtonPressCommand;
        private DelegateCommand<OperationButtonType> singleOperationButtonPressCommand;

        #endregion

        #region Constructor
        public CalculatorViewModel()
        {
            calculatorManager = new DisplayableCalculatorController();
        }

        #endregion

        #region Public Properties

        public string Function { get; set; }

        public string Display
        {
            get { return calculatorManager.Display; }
            set
            {
                OnPropertyChanged("Display");
            }
        }

        public NumericSystemType NumericSystem
        {
            get
            {
                return calculatorManager.NumericSystem;
            }
            set
            {
                calculatorManager.NumericSystem = value;
                OnPropertyChanged("Display");
            }
        }
        #endregion

        #region Commands

        public ICommand ActionButtonPressCommand
        {
            get
            {
                if (actionButtonPressCommand == null)
                {
                    actionButtonPressCommand = new DelegateCommand<ActionButtonType>(
                        ActionButtonPress, CanActionButtonPress);
                }
                return actionButtonPressCommand;
            }
        }

        private bool CanActionButtonPress(ActionButtonType buttonType)
        {
            return calculatorManager.CanActionBeExecuted();
        }

        public void ActionButtonPress(ActionButtonType buttonType)
        {
            var actionType = buttonType.ToActionType();
            calculatorManager.ExecuteAction(actionType);
            Display = calculatorManager.Display;
        }

        public ICommand BinaryOperationButtonPressCommand
        {
            get
            {
                if (binaryOperationButtonPressCommand == null)
                {
                    binaryOperationButtonPressCommand = new DelegateCommand<OperationButtonType>(
                        BinaryOperationButtonPress, CanBinaryOperationButtonPress);
                }
                return binaryOperationButtonPressCommand;
            }
        }

        private bool CanBinaryOperationButtonPress(OperationButtonType buttonType)
        {
            var operationType = buttonType.GetOperationType();
            return calculatorManager.CanOperationBeExecuted(operationType);
        }

        //for operations with 2 operands
        public void BinaryOperationButtonPress(OperationButtonType buttonType)
        {
            try
            {
                var operationType = buttonType.GetOperationType();
                calculatorManager.ExecuteBinaryOperation(operationType);
                Display = calculatorManager.Display;
            }
            catch (CalculatorException exception)
            {
                MessageBox.Show(exception.Message, "Calculator", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public ICommand DigitButtonPressCommand
        {
            get
            {
                if (digitButtonPressCommand == null)
                {
                    digitButtonPressCommand = new DelegateCommand<DigitButtonType>(
                        DigitButtonPress, CanDigitButtonPress);
                }
                return digitButtonPressCommand;
            }
        }

        private bool CanDigitButtonPress(DigitButtonType buttonType)
        {
            return calculatorManager.IsValidDigit(buttonType.ToStringRepresentation());
        }

        //deals with button inputs and sorts out the display accordingly
        public void DigitButtonPress(DigitButtonType buttonType)
        {
            calculatorManager.AppendDigit(buttonType.ToStringRepresentation());
            Display = calculatorManager.Display;
        }


        public ICommand SingleOperationButtonPressCommand
        {
            get
            {
                if (singleOperationButtonPressCommand == null)
                {
                    singleOperationButtonPressCommand = new DelegateCommand<OperationButtonType>(
                        SingleOperationButtonPress, CanSingleOperationButtonPress);
                }
                return singleOperationButtonPressCommand;
            }
        }

        private bool CanSingleOperationButtonPress(OperationButtonType buttonType)
        {
            var operationType = buttonType.GetOperationType();
            return calculatorManager.CanOperationBeExecuted(operationType);
        }

        //deals with button inputs and sorts out the display accordingly
        public void SingleOperationButtonPress(OperationButtonType buttonType)
        {
            try
            {
                var operationType = buttonType.GetOperationType();
                calculatorManager.ExecuteSingularOperation(operationType);
                Display = calculatorManager.Display;
            }
            catch (CalculatorException exception)
            {
                MessageBox.Show(exception.Message, "Calculator", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        #endregion
    }
}
