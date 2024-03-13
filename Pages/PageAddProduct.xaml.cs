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

namespace BeautyShop_M.AppDataFile.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageAdd.xaml
    /// </summary>
    public partial class PageAddProduct : Page
    {
        bool LogicRb = false;
        public PageAddProduct()
        {
            InitializeComponent();
            CmbxOwner.SelectedValuePath = "ID";
            CmbxOwner.DisplayMemberPath = "Name";
            CmbxOwner.ItemsSource = Connectdb.conObj.Manufacturer.ToList();

            if(RbActive.IsChecked != false)
            {
                LogicRb = true;
            }
            else
            {
                LogicRb = false;
            }

            if(RbNotActive.IsChecked != false)
            {
                LogicRb = false;
            }
            else
            {
                LogicRb = true;
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Product product = new Product()
                {
                    Title = TxtTitle.Text,
                    Cost = Convert.ToDecimal(TxtCost.Text),
                    Description = TxtDescription.Text,
                    MainImagePath = TxtImage.Text,
                    IsActive = LogicRb,
                    Manufacturer = CmbxOwner.SelectedItem as Manufacturer 
                };

                Connectdb.conObj.Product.Add(product);
                Connectdb.conObj.SaveChanges();
                MessageBox.Show("Данные успешно добавлены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }

        }
    }
}
