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

namespace WPFAvioKompanija
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Destinacija objDestinacija = new Destinacija();
            this.Visibility = Visibility.Hidden;
            objDestinacija.Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Karta objKarta = new Karta();
            this.Visibility = Visibility.Hidden;
            objKarta.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Klijent objKlijent = new Klijent();
            this.Visibility = Visibility.Hidden;
            objKlijent.Show();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Objekat objObjekat = new Objekat();
            this.Visibility = Visibility.Hidden;
            objObjekat.Show();
        }
        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            Klasa objKlasa = new Klasa();
            this.Visibility = Visibility.Hidden;
            objKlasa.Show();
        }
    }
}
