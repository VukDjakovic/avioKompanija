using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
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
using System.Windows.Shapes;

namespace WPFAvioKompanija
{
    /// <summary>
    /// Interaction logic for Destinacija.xaml
    /// </summary>
    public partial class Klijent : Window
    {

        public Klijent()
        {
            InitializeComponent();
            binDataGrid();
        }
        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            MainWindow objMainWindow = new MainWindow();
            this.Visibility = Visibility.Hidden;
            objMainWindow.Show();
        }
        private void binDataGrid()
        {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "SELECT * FROM [Klijent]";
            command.Connection = connection;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable("Klijent");
            dataAdapter.Fill(dataTable);

            DataGrid.ItemsSource = dataTable.DefaultView;
        }


        private void ponistiUnosTxt()
        {
            txtIme_klijenta.Text = "";
            txtPrezime_klijenta.Text = "";
            txtKontakt_klijenta.Text = "";
           

        }
        private void Dodaj_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "INSERT INTO [Klijent](Ime_klijenta, Prezime_klijenta, Kontakt_klijenta) VALUES(@Ime_klijenta,@Prezime_klijenta,@Kontakt_klijenta)";
            command.Parameters.AddWithValue("@Ime_klijenta", txtIme_klijenta.Text);
            command.Parameters.AddWithValue("@Prezime_klijenta", txtPrezime_klijenta.Text);
            command.Parameters.AddWithValue("@Kontakt_klijenta", txtKontakt_klijenta.Text);
            command.Connection = connection;
            int provera = command.ExecuteNonQuery();
            if (provera == 1)
            {
                MessageBox.Show("Podaci su uspešno upisani");
                binDataGrid();
            }
            ponistiUnosTxt();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataGrid dg = sender as DataGrid;
            DataRowView dr = dg.SelectedItem as DataRowView;
            if (dr != null)
            {
                txtIme_klijenta.Text = dr["Ime_klijenta"].ToString();
                txtPrezime_klijenta.Text = dr["Prezime_klijenta"].ToString();
                txtKontakt_klijenta.Text = dr["Kontakt_klijenta"].ToString();
                txtID_klijenta.Text = dr["ID_klijenta"].ToString();

            }
        }

        private void Obrisi_Click(object sender, RoutedEventArgs e)
        {
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.CommandText = "DELETE FROM [Klijent] WHERE ID_klijenta = @ID_klijenta";
                command.Parameters.AddWithValue("@ID_klijenta", txtID_klijenta.Text);
                command.Connection = connection;
                int provera = command.ExecuteNonQuery();
                if (provera == 1)
                {
                    MessageBox.Show("Podaci su uspešno obrisani");
                    binDataGrid();
                }
                ponistiUnosTxt();
            }
        }
        private void Izmeni_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "UPDATE [Klijent] SET Ime_klijenta = @Ime_klijenta, Prezime_klijenta = @Prezime_klijenta, Kontakt_klijenta = @Kontakt_klijenta WHERE ID_klijenta = @ID_klijenta";
            command.Parameters.AddWithValue("@ID_klijenta", txtID_klijenta.Text);
            command.Parameters.AddWithValue("@Ime_klijenta", txtIme_klijenta.Text);
            command.Parameters.AddWithValue("@Prezime_klijenta", txtPrezime_klijenta.Text);
            command.Parameters.AddWithValue("@Kontakt_klijenta", txtKontakt_klijenta.Text);
            command.Connection = connection;
            int provera = command.ExecuteNonQuery();
            if (provera == 1)
            {
                MessageBox.Show("Podaci su uspešno promenjeni");
                binDataGrid();
            }
            ponistiUnosTxt();
        }
    }
}
