using Google.Authenticator;
using System;
using System.Configuration;

namespace _2FactAuthDotNet
{
    public partial class Auth : System.Web.UI.Page
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
            if( Request.QueryString["userid"] != null &&
                Request.QueryString["userid"].ToString() != string.Empty)
            {
                GenerateImage(Request.QueryString["userid"].ToString());
            }
        }

        public void GenerateImage(string user)
        {
            TwoFactorAuthenticator tfa = new TwoFactorAuthenticator();
            //tfa.DefaultClockDriftTolerance = new TimeSpan(0, 1, 0);
            var setupInfo = tfa.GenerateSetupCode("Reval2Fact", "Reval2Fact", Key + user, 300, 300);//the width and height of the Qr Code

            string qrCodeImageUrl = setupInfo.QrCodeSetupImageUrl; //  assigning the Qr code information + URL to string
            string manualEntrySetupCode = setupInfo.ManualEntryKey; // show the Manual Entry Key for the users that don't have app or phone
            imgQR.ImageUrl = qrCodeImageUrl;// showing the qr code on the page "linking the string to image element"
            lblCode.Text = manualEntrySetupCode; // showing the manual Entry setup code for the users that can not use their phone
            Session["user"] = user;
        }
    }
}