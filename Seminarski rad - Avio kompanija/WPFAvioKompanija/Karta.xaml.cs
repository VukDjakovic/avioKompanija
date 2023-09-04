using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
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
using WPFAvioKompanija;

namespace WPFAvioKompanija
{
    public partial class Karta : Window
    {


        public Karta()
        {
            InitializeComponent();
            binDataGrid();
        }

        private void binDataGrid()
        {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "SELECT * FROM  [Karta] INNER JOIN [Objekat] ON [Karta].ID_objekta = [Objekat].ID_objekta INNER JOIN [Klijent] ON [Karta].ID_klijenta = [Klijent].ID_klijenta INNER JOIN [Klasa] ON [Karta].ID_klase = [Klasa].ID_klase INNER JOIN [Destinacija] ON [Objekat].ID_destinacije = [Destinacija].ID_destinacije";
            command.Connection = connection;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable("Karta");
            dataAdapter.Fill(dataTable);

            DataGrid.ItemsSource = dataTable.DefaultView;
        }

        private void ponistiUnosTxt()
        {
            txtCena.Text = "";
            dtDatum.Text = "";
            lbxID_objekta.SelectedValue = "";
            cbxID_klijenta.SelectedValue = "";
            cbxID_klase.SelectedValue = "";

        }
        private void Dodaj_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            DateTime Datum = Convert.ToDateTime(dtDatum.Text);
            string myDate = "30-12-1899 07:50:00:AM";
            DateTime dt1 = DateTime.ParseExact(myDate, "dd-MM-yyyy hh:mm:ss:tt",
                                                       CultureInfo.InvariantCulture);
            SqlCommand command = new SqlCommand();
            command.CommandText = "INSERT INTO [Karta](Cena, Datum, ID_objekta, ID_klijenta, ID_klase) VALUES(@Cena, @Datum, @ID_objekta, @ID_klijenta, @ID_klase)";
            command.Parameters.AddWithValue("@Cena", txtCena.Text);
            command.Parameters.AddWithValue("@Datum", dtDatum.SelectedDate);
            command.Parameters.AddWithValue("@ID_objekta", lbxID_objekta.SelectedValue);
            command.Parameters.AddWithValue("@ID_klijenta", cbxID_klijenta.SelectedValue);
            command.Parameters.AddWithValue("@ID_klase", cbxID_klase.SelectedValue);

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
                txtID_karte.Text = dr["ID_karte"].ToString();
                txtCena.Text = dr["Cena"].ToString();
                dtDatum.Text = dr["Datum"].ToString();
                lbxID_objekta.SelectedValue = dr["ID_objekta"].ToString();
                cbxID_klijenta.SelectedValue = dr["ID_klijenta"].ToString();
                cbxID_klase.SelectedValue = dr["ID_klase"].ToString();
            }
        }

        private void Obrisi_Click(object sender, RoutedEventArgs e)
        {
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.CommandText = "DELETE FROM [Karta] WHERE ID_karte = @ID_karte";
                command.Parameters.AddWithValue("@ID_karte", txtID_karte.Text);
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
            command.CommandText = "UPDATE [Karta] SET Cena = @Cena, Datum = @Datum, ID_objekta = @ID_objekta, ID_klijenta = @ID_klijenta, ID_klase = @ID_klase WHERE ID_karte = @ID_karte";
            command.Parameters.AddWithValue("@ID_karte", txtID_karte.Text);
            command.Parameters.AddWithValue("@Cena", txtCena.Text);
            command.Parameters.AddWithValue("@Datum", dtDatum.SelectedDate);
            command.Parameters.AddWithValue("@ID_objekta", lbxID_objekta.SelectedItem);
            command.Parameters.AddWithValue("@ID_klijenta", cbxID_klijenta.SelectedValue);
            command.Parameters.AddWithValue("@ID_klase", cbxID_klase.SelectedValue);

            command.Connection = connection;
            int provera = command.ExecuteNonQuery();
            if (provera == 1)
            {
                MessageBox.Show("Podaci su uspešno promenjeni");
                binDataGrid();
            }
            ponistiUnosTxt();

        }

        private void lbxID_objekta_Loaded(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand commandLbx = new SqlCommand();
            commandLbx.CommandText = "SELECT * FROM [Objekat] ORDER BY ID_objekta";
            commandLbx.Connection = connection;
            SqlDataAdapter dataAdapterLbx = new SqlDataAdapter(commandLbx);
            DataTable dataTableLbx = new DataTable("Karta");
            dataAdapterLbx.Fill(dataTableLbx);

            for (int i = 0; i < dataTableLbx.Rows.Count; i++)
            {
                lbxID_objekta.Items.Add(dataTableLbx.Rows[i]["ID_objekta"]);
            }
        }

        private void cbxID_klijenta_Loaded(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand commandCbx = new SqlCommand();
            commandCbx.CommandText = "SELECT * FROM [Klijent] ORDER BY ID_klijenta";
            commandCbx.Connection = connection;
            SqlDataAdapter dataAdapterCbx = new SqlDataAdapter(commandCbx);
            DataTable dataTableCbx = new DataTable("Karta");
            dataAdapterCbx.Fill(dataTableCbx);
            for (int i = 0; i < dataTableCbx.Rows.Count; i++)
            {
                cbxID_klijenta.Items.Add(dataTableCbx.Rows[i]["ID_klijenta"]);
            }
        }

        private void cbxID_klase_Loaded(object sender, RoutedEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["BazaAvioKompanija"].ConnectionString;
            connection.Open();
            SqlCommand commandCbx = new SqlCommand();
            commandCbx.CommandText = "SELECT * FROM [Klasa] ORDER BY ID_klase";
            commandCbx.Connection = connection;
            SqlDataAdapter dataAdapterCbx = new SqlDataAdapter(commandCbx);
            DataTable dataTableCbx = new DataTable("Karta");
            dataAdapterCbx.Fill(dataTableCbx);
            for (int i = 0; i < dataTableCbx.Rows.Count; i++)
            {
                cbxID_klase.Items.Add(dataTableCbx.Rows[i]["ID_klase"]);
            }
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            MainWindow objMainWindow = new MainWindow();
            this.Visibility = Visibility.Hidden;
            objMainWindow.Show();
        }
    }
}
