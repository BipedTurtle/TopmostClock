using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace TopmostTimer.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private DispatcherTimer _timer;
        private DateTime _time;


        public MainViewModel()
        {
            _timer = new DispatcherTimer();

            _timer.Tick += this.UpdateTime;
            _timer.Interval = TimeSpan.FromSeconds(1);

            _timer.Start();
        }

        #region Properties
        public DateTime Time
        {
            get { return _time; }
            set
            {
                _time = value;
                base.OnPropertyChanged();
            }
        }
        #endregion


        #region Event Handlers
        private void UpdateTime(object sender, EventArgs e)
        {
            Time = DateTime.Now;
        }
        #endregion
    }
}
