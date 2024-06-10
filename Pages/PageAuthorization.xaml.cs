using BeautyShop_M.AppDataFile;
using BeautyShop_M.AppDataFile.Pages;
using BeautyShop_M.Pages;
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
    /// Логика взаимодействия для PageAuthorization.xaml
    /// </summary>
    public partial class PageAuthorization : Page
    {
        public PageAuthorization()
        {
            InitializeComponent();
            TxtShowPass.Visibility = Visibility.Collapsed;
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TxtLogin.Text.Trim() == "" || TxtPass.Password.Trim() == "")
                {
                    MessageBox.Show("Не все поля заплнены", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else
                {
                    var AuthorizationQuery = Connectdb.conObj.Employee.FirstOrDefault(emp => emp.Login == TxtLogin.Text.Trim() && emp.Password == TxtPass.Password.Trim());
                    if (AuthorizationQuery != null)
                    {
                        FrameObj.framemain.Navigate(new PageMain());
                        TxtLogin.Clear();
                        TxtPass.Clear();
                        TxtShowPass.Clear();
                    }
                    else
                    {
                        MessageBox.Show("Пользователь не найден", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void BtnShowPass_Click(object sender, RoutedEventArgs e)
        {
            if(TxtShowPass.Visibility == Visibility.Collapsed)
            {
                TxtShowPass.Text = TxtPass.Password.Trim();
                TxtPass.Visibility = Visibility.Collapsed;
                TxtShowPass.Visibility = Visibility.Visible;
            }
            else if(TxtPass.Visibility == Visibility.Collapsed)
            {
                TxtPass.Password = TxtShowPass.Text.Trim();
                TxtShowPass.Visibility = Visibility.Collapsed;
                TxtPass.Visibility = Visibility.Visible;
            }
        }
    }
}
