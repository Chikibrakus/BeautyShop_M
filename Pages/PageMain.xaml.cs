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

namespace BeautyShop_M.AppDataFile.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageMain.xaml
    /// </summary>
    public partial class PageMain : Page
    {
        public PageMain()
        {
            InitializeComponent();
        }

        private void btnProduct_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.framemain.Navigate(new PageProduct());
        }

        private void btnAddProduct_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.framemain.Navigate(new PageAddProduct());
        }

        private void btnServices_Click(object sender, RoutedEventArgs e)
        {
            //MessageBox.Show("TEST");
            FrameObj.framemain.Navigate(new PageServices());
        }

        private void btnFaq_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show($"{"Клиенты"} отвечает за функицонал просмотра и управления клинтами. \n{"Товары"} отвечает за функицонал просмотра и управления товраами. \n{"Услуги"} отвечает за функицонал просмотра и управления услугами. \n{"Добавить товар"} отвечает за функицонал добавления товара. \n{"Сотрудники"} отвечает за функицонал просмотра и управления сотрудниками \n{"Компания"} показывает подробную информацию об организации");
        }
    }
}
