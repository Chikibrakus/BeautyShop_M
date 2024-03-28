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
            Connectdb.conObj = new BeutyShop_MEntities5();
            FrameObj.framemain = FrmMain;

            FrmMain.Navigate(new PageMain());

        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                FrameObj.framemain.GoBack();
            }
            catch (InvalidOperationException)
            {
                MessageBox.Show("Вы на главной странице!", "Уведомление", MessageBoxButton.OK);
            }
        }
    }
}
