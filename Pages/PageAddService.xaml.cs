using BeautyShop_M.AppDataFile;
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

namespace BeautyShop_M.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageAddService.xaml
    /// </summary>
    public partial class PageAddService : Page
    {
        bool LogicRb = false;
        public PageAddService()
        {
            InitializeComponent();
            if (RbActive.IsChecked != false)
            {
                LogicRb = true;
            }
            else
            {
                LogicRb = false;
            }

            if (RbNotActive.IsChecked != false)
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
                Service service = new Service()
                {
                    Title = TxtTitle.Text,
                    Cost = Convert.ToDecimal(TxtCost.Text),
                    DurationInSeconds = Convert.ToInt32(TxtDurationInSec.Text),
                    Description = TxtDescription.Text,
                    MainImagePath = TxtImage.Text,
                    IsActive = LogicRb,
                    Discount = Convert.ToInt32(TxtDiscount.Text)
                };

                Connectdb.conObj.Service.Add(service);
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
