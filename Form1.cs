using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System;
using System.Runtime;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace CurrencyConverter
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        CurrencyConv.CurrencyConvertor CurrencyObj = new CurrencyConv.CurrencyConvertor(); 
        //Creating the extern function...
        [DllImport("wininet.dll")]
        private extern static bool InternetGetConnectedState(out int Description, int ReservedValue);
        public static bool IsConnectedToInternet()
        {
            int Desc;
            return InternetGetConnectedState(out Desc, 0);
        }
        private void CurrencyConverter_Load(object sender, EventArgs e)
        {
            ddl_CFrom.SelectedIndex = 0;
            ddl_CTo.SelectedIndex = 0;

            if (IsConnectedToInternet() == true)
            {

            }
            else
            {
                MessageBox.Show("Internet Connection is not available");
            }
        }

        private void btn_Convert_Click(object sender, EventArgs e)
        {
            if (IsConnectedToInternet() == true)
            {
                try
                {

                    CurrencyConv.Currency currencyFrom = new CurrencyConv.Currency();
                    CurrencyConv.Currency currencyTo = new CurrencyConv.Currency();
                    string sTo = ddl_CTo.Text.Substring(0, 3);
                    string sFrom = ddl_CFrom.Text.Substring(0, 3);

                    currencyTo = ReturnCountry(sTo);
                    currencyFrom = ReturnCountry(sFrom);
                    Double Convertz = CurrencyObj.ConversionRate(currencyFrom, currencyTo);
                    LBL_Result.Text = "1" + " " + ddl_CFrom.Text + " = " + Convertz + " " + ddl_CTo.Text;
                    //MessageBox.Show(Convertz.ToString());
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Service not available, try later");
                }
            }
            else
            {
                MessageBox.Show("Internet Connection is not available");
            }
        }
        public CurrencyConv.Currency ReturnCountry(string CompareValue)
        {
            Array a =  Enum.GetValues(typeof(CurrencyConv.Currency));
            int i = 0;
            for (i = 0; i < a.Length-1; i++)
            {
                if (a.GetValue(i).ToString()==CompareValue)
                    break;
            }
            return (CurrencyConv.Currency)a.GetValue(i);
        }

    }
}