using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TopmostTimer.ViewModels;

namespace TopmostTimer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private LinkedList<(double height, double width)> _windowSizes = new LinkedList<(double, double)>();
        private LinkedListNode<(double height, double width)> _currentSize;

        public MainWindow(MainViewModel mainViewModel)
        {
            InitializeComponent();
            
            DataContext = mainViewModel;

            this.InitializeWindowSize();
        }

        private void InitializeWindowSize()
        {
            var smallWindow = new LinkedListNode<(double, double)>((175, 210));
            var bigWindow = new LinkedListNode<(double, double)>((this.Height, this.Width));

            _windowSizes.AddLast(smallWindow);
            _windowSizes.AddLast(bigWindow);
            _currentSize = _windowSizes.Last;

            this.Height = _currentSize.Value.height;
            this.Width = _currentSize.Value.width;
        }

        private void DragOver_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();

        }

        private void CollapseWindow_Click(object sender, RoutedEventArgs e)
        {
            SystemCommands.MinimizeWindow(this);
        }

        private void CloseApp_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ResizeWindow_Click(object sender, RoutedEventArgs e)
        {
            _currentSize = _currentSize.Next == null ? _currentSize.Previous : _currentSize.Next;

            this.Height = _currentSize.Value.height;
            this.Width = _currentSize.Value.width;
        }
    }
}
