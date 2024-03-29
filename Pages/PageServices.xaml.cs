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
using System.Windows.Threading;

namespace BeautyShop_M.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageServices.xaml
    /// </summary>
    public partial class PageServices : Page
    {
        public PageServices()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer();//Создаём объект класса таймер 
            //gridLitProduct.ItemsSource = Connectdb.conObj.Product.ToList();
            timer.Interval = TimeSpan.FromSeconds(2);//Задаём интервал для срабатывания события
            timer.Tick += UpdateData;//Привязываем событие к таймеру
            timer.Start();//Запускаем тймер
        }

        public void UpdateData(object sender, object e)
        {
            var services = Connectdb.conObj.Service.ToList();
            ListService.ItemsSource = services;
            ListService.ItemsSource = Connectdb.conObj.Service.Where(x => x.Title.StartsWith(TxtSearchService.Text) || x.Description.StartsWith(TxtSearchService.Text)).ToList();
        }

        private void btnAddService_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.framemain.Navigate(new PageAddService());
        }

        private void BtnEditService_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.framemain.Navigate(new PageEditService((sender as Button).DataContext as Service));
        }
    }
}
