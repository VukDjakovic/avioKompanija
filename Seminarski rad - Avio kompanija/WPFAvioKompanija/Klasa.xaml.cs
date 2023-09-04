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
    public partial class Klasa : Window
    {

        public Klasa()
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
            command.CommandText = "SELECT * FROM [Klasa]";
            command.Connection = connection;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable("Klasa");
            dataAdapter.Fill(dataTable);

            DataGrid.ItemsSource = dataTable.DefaultView;
        }


        private void ponistiUnosTxt()
        {
            txtID_klase.Text = "";
            cbxVrsta_klase.Text = "";
            txtBroj_sedista.Text = "";

        }
        private void Dodaj_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "INSERT INTO [Klasa](Vrsta_klase, Broj_sedista) VALUES(@Vrsta_klase, @Broj_sedista)";
            command.Parameters.AddWithValue("@Vrsta_klase", cbxVrsta_klase.Text);
            command.Parameters.AddWithValue("@Broj_sedista", txtBroj_sedista.Text);
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
                cbxVrsta_klase.Text = dr["Vrsta_klase"].ToString();
                txtID_klase.Text = dr["ID_klase"].ToString();
                txtBroj_sedista.Text = dr["Broj_sedista"].ToString();

            }
        }

        private void Obrisi_Click(object sender, RoutedEventArgs e)
        {
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.CommandText = "DELETE FROM [Klasa] WHERE ID_klase = @ID_klase";
                command.Parameters.AddWithValue("@ID_klase", txtID_klase.Text);
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
            command.CommandText = "UPDATE [Klasa] SET Vrsta_klase = @Vrsta_klase, Broj_sedista = @Broj_sedista WHERE ID_klase = @ID_klase";
            command.Parameters.AddWithValue("@ID_klase", txtID_klase.Text);
            command.Parameters.AddWithValue("@Broj_sedista", txtBroj_sedista.Text);
            command.Parameters.AddWithValue("@Vrsta_klase", cbxVrsta_klase.Text);
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