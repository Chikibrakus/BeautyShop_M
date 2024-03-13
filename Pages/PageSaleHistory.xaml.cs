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
    /// Логика взаимодействия для PageSaleHistory.xaml
    /// </summary>
    public partial class PageSaleHistory : Page
    {
        public PageSaleHistory(Product product)
        {
            InitializeComponent();

            ProductObj.Id = product.ID;
            CmbxProduct.DisplayMemberPath = "Title";
            CmbxProduct.SelectedValuePath = "ID";
            CmbxProduct.ItemsSource = Connectdb.conObj.Product.ToList();

            GridSaleProduct.IsReadOnly = true;

            GridSaleProduct.ItemsSource = Connectdb.conObj.ProductSale.Where(x => x.ProductID == ProductObj.Id).ToList();
        }

        private void CmbxProduct_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GridSaleProduct.ItemsSource = null;
            int SelectProduct = Convert.ToInt32(CmbxProduct.SelectedValue);
            GridSaleProduct.ItemsSource = Connectdb.conObj.ProductSale.Where(x => x.ProductID == SelectProduct).ToList();
            GridSaleProduct.SelectedIndex = 0;
        }
    }
}
