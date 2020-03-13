using Calculator.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator.ViewModels
{
    public static class DigitButtonTypeExtensions
    {
        public static string ToStringRepresentation(this DigitButtonType buttonType)
        {
            switch (buttonType)
            {
                case DigitButtonType.NUMBER_0:
                    return "0";
                case DigitButtonType.NUMBER_1:
                    return "1";
                case DigitButtonType.NUMBER_2:
                    return "2";
                case DigitButtonType.NUMBER_3:
                    return "3";
                case DigitButtonType.NUMBER_4:
                    return "4";
                case DigitButtonType.NUMBER_5:
                    return "5";
                case DigitButtonType.NUMBER_6:
                    return "6";
                case DigitButtonType.NUMBER_7:
                    return "7";
                case DigitButtonType.NUMBER_8:
                    return "8";
                case DigitButtonType.NUMBER_9:
                    return "9";
                case DigitButtonType.LETTER_A:
                    return "A";
                case DigitButtonType.LETTER_B:
                    return "B";
                case DigitButtonType.LETTER_C:
                    return "C";
                case DigitButtonType.LETTER_D:
                    return "D";
                case DigitButtonType.LETTER_E:
                    return "E";
                case DigitButtonType.LETTER_F:
                    return "F";
                default:
                    throw new CalculatorException("Unknown button type: " + buttonType);
            }
        }

        public static OperationType GetOperationType(this OperationButtonType buttonType)
        {
            switch (buttonType)
            {
                case OperationButtonType.SUM:
                    return OperationType.SUM;
                case OperationButtonType.SUBTRACTION:
                    return OperationType.SUBTRACTION;
                case OperationButtonType.MULTIPLICATION:
                    return OperationType.MULTIPLICATION;
                case OperationButtonType.DIVISION:
                    return OperationType.DIVISION;
                case OperationButtonType.EQUAL:
                    return OperationType.EQUAL;
                case OperationButtonType.FACTORIAL:
                    return OperationType.FACTORIAL;
                case OperationButtonType.INVERSE:
                    return OperationType.INVERSE;
                case OperationButtonType.POSITION:
                    return OperationType.POSITION;
                case OperationButtonType.CHANGE_SIGN:
                    return OperationType.CHANGE_SIGN;
                case OperationButtonType.RADICAL:
                    return OperationType.RADICAL;
                case OperationButtonType.EXPONENTIATION:
                    return OperationType.EXPONENTIATION;
                default:
                    return OperationType.NONE;
            }
        }

        public static ActionType ToActionType(this ActionButtonType buttonType)
        {
            switch (buttonType)
            {
                case ActionButtonType.CLEAR:
                    return ActionType.CLEAR;
                case ActionButtonType.DELETE:
                    return ActionType.DELETE;
                case ActionButtonType.POINT:
                    return ActionType.POINT;
                default:
                    throw new CalculatorException("Unknown action type: " + buttonType);
            }
        }
    }
}
