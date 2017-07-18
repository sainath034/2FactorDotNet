using Google.Authenticator;
using System;
using System.Configuration;

namespace _2FactAuthDotNet
{
    public partial class Validate : System.Web.UI.Page
    {
        public string Key
        {
            get
            {
                string strQrKey = string.Empty;
                if (ConfigurationManager.AppSettings.Get("QRKey") != null)
                {
                    strQrKey = ConfigurationManager.AppSettings.Get("QRKey").ToString();
                }
                return strQrKey;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Verify();
        }

        public void Verify()
        {
            string user_enter = txtQR.Text;
            TwoFactorAuthenticator tfa = new TwoFactorAuthenticator();
            //tfa.DefaultClockDriftTolerance = new TimeSpan(0, 1, 0);
            //bool isCorrectPIN = tfa.ValidateTwoFactorPIN(Key + id, user_enter,new TimeSpan(0,1,0));
            string strCurrentPin = tfa.GetCurrentPIN(Key + Session["user"].ToString());
            if (strCurrentPin.Equals(user_enter))
            {
                lblResponse.Text = "Success";
            }
            else
            {
                lblResponse.Text = "Failure current key used is "+ strCurrentPin;
            }
        }
    }
}