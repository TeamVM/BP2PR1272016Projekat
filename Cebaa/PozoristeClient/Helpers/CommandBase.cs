using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace PozoristeClient.Helpers
{
    public class CommandBase : ICommand
    {
        Action<object> _TargetExecuteMethod;

        public CommandBase(Action<object> executeMethod)
        {
            _TargetExecuteMethod = executeMethod;
        }


        public void RaiseCanExecuteChanged()
        {
            CanExecuteChanged(this, EventArgs.Empty);
        }

        bool ICommand.CanExecute(object parameter)
        {
            if (_TargetExecuteMethod != null)
            {
                return true;
            }

            return false;
        }

        public event EventHandler CanExecuteChanged = delegate { };

        void ICommand.Execute(object parameter)
        {
            if (_TargetExecuteMethod != null)
            {
                _TargetExecuteMethod(parameter);
            }
        }

        public void Execute(object parameter)
        {
            if (_TargetExecuteMethod != null)
            {
                _TargetExecuteMethod(parameter);
            }
        }
    }

    public class CommandBase<T> : RelayCommand<T>
    {
        public CommandBase(Action<T> execute, bool keepTargetAlive = false) : base(execute, keepTargetAlive) { }

        public CommandBase(Action<T> execute, Func<T, bool> canExecute, bool keepTargetAlive = false) : base(execute, canExecute, keepTargetAlive) { }


        public override void Execute(object parameter)
        {
            base.Execute(parameter);
        }
    }
}
