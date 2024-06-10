using BeautyShop_M.AppDataFile;
using BeautyShop_M.AppDataFile.Pages;
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
using BeautyShop_M.Pages;

namespace BeautyShop_M
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Connectdb.conObj = new BeautyShop_MIIEntities1();
            FrameObj.framemain = FrmMain;

            //FrmMain.Navigate(new PageMain());
            FrmMain.Navigate(new PageAuthorization());
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                if (FrmMain.Content is PageMain)
                {
                    MessageBoxResult result = MessageBox.Show("Вы уверены, что хотите выйти?", "Подтверждение", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (result == MessageBoxResult.Yes)
                    {
                        FrameObj.framemain.GoBack();
                    }
                    else
                    {
                    }
                }
                else 
                {
                    FrameObj.framemain.GoBack();

                }
            }
            catch (InvalidOperationException)
            {
                MessageBox.Show("Вы на первой странице!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);
            }        
        }
    }
}
