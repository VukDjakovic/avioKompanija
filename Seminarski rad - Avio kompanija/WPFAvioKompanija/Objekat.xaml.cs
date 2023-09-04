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
    public partial class Objekat : Window
    {

        public Objekat()
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
            command.CommandText = "SELECT * FROM [Objekat] INNER JOIN [Destinacija] ON [Objekat].ID_destinacije = [Destinacija].ID_destinacije";
            command.Connection = connection;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable("Objekat");
            dataAdapter.Fill(dataTable);

            DataGrid.ItemsSource = dataTable.DefaultView;
        }


        private void ponistiUnosTxt()
        {
            txtVrsta_objekta.Text = "";
            txtNaziv.Text = "";
            txtKontakt.Text = "";
            cbxID_destinacije.SelectedValue = "";

        }
        private void Dodaj_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "INSERT INTO [Objekat](Vrsta_objekta, Naziv_objekta, Kontakt_objekta, ID_destinacije) VALUES(@Vrsta_objekta, @Naziv_objekta, @Kontakt_objekta, @ID_destinacije)";
            command.Parameters.AddWithValue("@Vrsta_objekta", txtVrsta_objekta.Text);
            command.Parameters.AddWithValue("@Naziv_objekta", txtNaziv.Text);
            command.Parameters.AddWithValue("@Kontakt_objekta", txtKontakt.Text);
            command.Parameters.AddWithValue("@ID_destinacije", cbxID_destinacije.SelectedValue);
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
                txtVrsta_objekta.Text = dr["Vrsta_objekta"].ToString();
                txtNaziv.Text = dr["Naziv_objekta"].ToString();
                txtKontakt.Text = dr["Kontakt_objekta"].ToString();
                txtID_objekta.Text = dr["ID_objekta"].ToString();
                cbxID_destinacije.SelectedValue = dr["ID_destinacije"].ToString();

            }
        }

        private void Obrisi_Click(object sender, RoutedEventArgs e)
        {
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.CommandText = "DELETE FROM [Objekat] WHERE ID_objekta = @ID_objekta";
                command.Parameters.AddWithValue("@ID_objekta", txtID_objekta.Text);
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
            command.CommandText = "UPDATE [Objekat] SET Vrsta_objekta = @Vrsta_objekta, Naziv_objekta = @Naziv_objekta, Kontakt_objekta = @Kontakt_objekta WHERE ID_objekta = @ID_objekta";
            command.Parameters.AddWithValue("@ID_objekta", txtID_objekta.Text);
            command.Parameters.AddWithValue("@Vrsta_objekta", txtVrsta_objekta.Text);
            command.Parameters.AddWithValue("@Naziv_objekta", txtNaziv.Text);
            command.Parameters.AddWithValue("@Kontakt_objekta", txtKontakt.Text);
            command.Parameters.AddWithValue("@ID_destinacije", cbxID_destinacije.SelectedValue);
            command.Connection = connection;
            int provera = command.ExecuteNonQuery();
            if (provera == 1)
            {
                MessageBox.Show("Podaci su uspešno promenjeni");
                binDataGrid();
            }
            ponistiUnosTxt();
        }

        private void cbxID_destinacije_Loaded(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand commandCbx = new SqlCommand();
            commandCbx.CommandText = "SELECT * FROM [Destinacija] ORDER BY ID_destinacije";
            commandCbx.Connection = connection;
            SqlDataAdapter dataAdapterCbx = new SqlDataAdapter(commandCbx);
            DataTable dataTableCbx = new DataTable("Objekat");
            dataAdapterCbx.Fill(dataTableCbx);
            for (int i = 0; i < dataTableCbx.Rows.Count; i++)
            {
                cbxID_destinacije.Items.Add(dataTableCbx.Rows[i]["ID_destinacije"]);
            }
        }
    }
}
