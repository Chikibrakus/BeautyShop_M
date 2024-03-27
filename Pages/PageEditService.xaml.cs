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
    /// Логика взаимодействия для PageEditService.xaml
    /// </summary>
    public partial class PageEditService : Page
    {
        bool logicRb = false;

        public PageEditService(Service service)
        {
            InitializeComponent();

            ServiceObj.Id = service.ID;

            TxtTitle.Text = service.Title;
            TxtCost.Text = Convert.ToString(service.Cost);
            TxtDurationInSec.Text = Convert.ToString(service.DurationInSeconds);
            TxtDescription.Text = service.Description;
            TxtImage.Text = service.MainImagePath;
            TxtDiscount.Text = Convert.ToString(service.Discount);

            if (service.IsActive != false)
            {
                RbActive.IsChecked = true;
                logicRb = true;
            }
            else
            {
                RbNotActive.IsChecked = true;
                logicRb = false;
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                IEnumerable<Service> services = Connectdb.conObj.Service.Where(x => x.ID == ServiceObj.Id).AsEnumerable().
                    Select(x =>
                    {
                        x.Title = TxtTitle.Text;
                        x.Cost = Convert.ToDecimal(TxtCost.Text);
                        x.DurationInSeconds = Convert.ToInt32(TxtDurationInSec.Text);
                        x.Discount = Convert.ToInt32(TxtDiscount.Text);
                        if (string.IsNullOrWhiteSpace(TxtDescription.Text))
                        {
                            x.Description = "";
                        }
                        else
                        {
                            x.Description = TxtDescription.Text;
                        }

                        if (string.IsNullOrWhiteSpace(TxtImage.Text))
                        {
                            x.MainImagePath = "";
                        }
                        else
                        {
                            x.MainImagePath = TxtImage.Text;
                        }

                        if (TxtDiscount.Text == "")
                        {
                            x.Discount = 0;
                        }
                        else
                        {
                            x.Discount = Convert.ToInt32(TxtDiscount.Text);
                        }

                        //x.IsActive = logicRb;
                        if (RbActive.IsChecked == true)
                        {
                            x.IsActive = true;
                        }
                        else if (RbNotActive.IsChecked == true)
                        {
                            x.IsActive = false;
                        }                     
                        return x;
                    });

                foreach (Service service in services)
                {
                    Connectdb.conObj.Entry(service).State = System.Data.Entity.EntityState.Modified;
                }

                Connectdb.conObj.SaveChanges();
                MessageBox.Show("Данные успешно изменены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }
        }
    }
}
