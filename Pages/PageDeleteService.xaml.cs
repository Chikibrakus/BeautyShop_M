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
    /// Логика взаимодействия для PageDeleteService.xaml
    /// </summary>
    public partial class PageDeleteService : Page
    {
        public PageDeleteService(Service service)
        {
            InitializeComponent();
            ServiceObj.Id = service.ID;
            TitleService.Content = service.Title;
        }

        private void BtnDeleteNo_Click(object sender, RoutedEventArgs e)
        {
            FrameObj.framemain.GoBack();
        }

        private void BtnDeleteYes_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var entityToDelete = Connectdb.conObj.Service.FirstOrDefault(x => x.ID == ServiceObj.Id);
                if (entityToDelete != null)
                {
                    Connectdb.conObj.Service.Remove(entityToDelete);
                    Connectdb.conObj.SaveChanges();
                    MessageBox.Show("Данные удалены");
                    FrameObj.framemain.GoBack();
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Произошла непредвиденная ошибка", exception.ToString(), MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}
